########################################################################
#	In this file, I am going to try to drop my reliance on Sci2
#		- though I am likely still going to use it to convert raw files to .csv
#		- my aim is for that to be it from here moving forward though.
#	NOTE: If arttype includes >1 type, should be input as a vectorized list (c()).

# The labels on this one assume bibliometrix processing.
########################################################################
SciNets <- function(temp, nettype=c("citation", "coauthor", "bibcoup", "cocite"), arttype){
	df1 <- data.frame(auths=temp$AF, refs=temp$CR, type=temp$DT, isi=temp$UT, journal=temp$JI, isikw=temp$ID, origkw=temp$DE, year=temp$PY, cites=temp$TC, title=temp$TI, cites1=temp$Z9)
	df1 <- df1[which((df1$type %in% arttype)==T),]
	require(stringr)
	require(igraph)
	require(Matrix)
	rm(df1)

#########################################################################
#	This is for coauthor networks
#########################################################################
	if(nettype=="coauthor"){		
		auths <- str_split(df$auths, ";")
		auths <- mapply(tolower, auths)
		begun <- 0
		for(i in 1:length(auths)){
			if(length(auths[[i]])>1){
				for (j in 1:(length(auths[[i]])-1)){
					if (begun==0) {
						ag <- c(auths[[i]][j], auths[[i]][j+1])
						years <- df$year[i]
						for(k in (j+1):length(auths[[i]])) {
							ag <- append(ag, c(auths[[i]][j], auths[[i]][k]))	
							years <- append(years, df$year[i])	
						}
						begun <- 1
					} else {
						for(k in (j+1):length(auths[[i]])) {
							ag <- append(ag, c(auths[[i]][j], auths[[i]][k]))
							years <- append(years, df$year[i])	
						}
					}
				}	
			}
		} 
		rm(begun, i, j, k)
		ag <- matrix(ag, ncol=2, byrow=T)
		years <- years[-1]	# removing a duplicate
		ag <- ag[-1,]	# removing a duplicate
		agg <- graph(as.numeric(as.factor(as.vector(t(ag)))), directed=F)
		V(agg)$names <- sort(unique(as.vector(ag)))
		E(agg)$year <- years
		rm(ag, auths, temp)
		return(agg)
		}
		
#########################################################################
#	This is for citation networks
#	But it is also an interim step for bib-coupling and co-citation nets.
#########################################################################
	if(nettype %in% c("citation", "bibcoup", "cocite")==T){		
		refs <- str_split(df1$refs, ";")
		refs <- mapply(tolower, refs)
		for(i in 1:length(refs)){
			for (j in 1:length(refs[[i]])){
				if (j==1 & i==1) {
					rg <- matrix(data=NA, nrow=1, ncol=2)
					rg[1,1] <- tolower(df1$isi[1])
					rg[1,2] <- refs[[1]][1]
					} else {
					rg<- matrix(append(t(rg), c(tolower(df1$isi[i]), refs[[i]][j])), ncol=2, byrow=T)
					}
				}
			} 
		rm(i, j)
		rgg <- graph(as.numeric(as.factor(as.vector(t(rg)))), directed=T)
		V(rgg)$names <- sort(unique(as.vector(rg)))
		rm(rg, refs, temp)
		if(nettype=="citation") {return(rgg)}
		}

#########################################################################
#	This is for bibliographic coupling networks
#########################################################################
	if(nettype=="bibcoup"){		
		bibcoup <- graph.adjacency(tcrossprod(get.adjacency(rgg)), mode="undirected", diag=F, weighted=T)
		V(bibcoup)$names <- V(rgg)$names
		bibcoup <- induced.subgraph(bibcoup, which(degree(rgg, mode="out")>0))
		rm(rgg)
		return(bibcoup)
		}
#########################################################################
#	This is for bibliographic coupling networks
#########################################################################
	if(nettype=="cocite"){		
		cocite <- graph.adjacency(crossprod(get.adjacency(rgg)), mode="undirected", diag=F, weighted=T)
		V(cocite)$names <- V(rgg)$names
		cocite <- induced.subgraph(cocite, which(degree(rgg, mode="in")>0))
		rm(rgg)
		return(cocite)
		}
		
	}