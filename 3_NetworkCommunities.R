## Grabbing the data 
library(igraph)
library(bibliometrix)
library(tidyverse)
load("data/social_capital.Rdata")
load("data/networks.Rdata")
load("data/bibmx_networks.Rdata")
set.seed(421)

## Community detection on the citation network directly
  # ic <- infomap.community(all_citation) # essentially just breaks into cited-citing paper clusters
  #V(all_citation)$fg <- fastgreedy.community(as.undirected(all_citation))$membership
  #V(all_citation)$lc <- multilevel.community(as.undirected(all_citation))$membership

  # Currently, using the article only version
  # ic <- infomap.community(art_citation) # essentially just breaks into cited-citing paper clusters
  V(art_citation)$fg <- fastgreedy.community(as.undirected(art_citation))$membership
  # 5 comms > 50, include 11971 of 15347 articles
  V(art_citation)$lc <- multilevel.community(as.undirected(art_citation))$membership
  # 6 comms > 1000, include 11220 of 15347 articles
  # 10 comms > 100, include 12389 of 15347 articles

# M in fullcites / artcites has the original data and all the nodes in all_citation / art_citation
# This means I should be able merge the community solutions onto that to do the subbsetting, 
# then construct the consituent co-citation subgraphs.
# Actually, I don't have to go through the problems of in-exact merges. The nodeset is in the same order as the raw data files. I've triple checked this.

mdf <- data.frame(label=artcites$M$LABEL)
mdf <- cbind(mdf, V(art_citation)$name, V(art_citation)$fg, V(art_citation)$lc) #keeping both labels, just to show they align
colnames(mdf) <- c("label", "node_label", "fg", "lc")
# mdf[mdf$label != mdf$node_label,] #these are ALL author-year-journal duplicates wehere bibliometrix appended an "-a" on the 2nd occurence

# Let's pull off the largest communities:
# fg solution only has 5 clusters w/ >50 nodes (all >750, in fact)
fg100 <- as.numeric(names(sort(table(mdf$fg), decreasing=T)[sort(table(mdf$fg), decreasing=T)>100]))
# lc solution has 10 w/ > 100 nodes, or 6 w/ > 1000 (the other 3 have 228-389)
lc100 <- as.numeric(names(sort(table(mdf$lc), decreasing=T)[sort(table(mdf$lc), decreasing=T)>100]))
lc1000 <- as.numeric(names(sort(table(mdf$lc), decreasing=T)[sort(table(mdf$lc), decreasing=T)>1000]))

# Again, I checked the label alignment above, so this shorthand just uses positions, rather than matches
fg_100 <- list(NA)
for (i in 1:length(fg100)){
  fg_100[[i]] <- artcites$M[(mdf$fg==fg100[i])==T,]
  names(fg_100)[i] <- paste("fg_", fg100[i], sep="")
}
# lc_100 <- list(NA)
# for (i in 1:length(lc100)){
#   lc_100[[i]] <- artcites$M[(mdf$lc==lc100[i])==T,]
#   names(lc_100)[i] <- paste("lc_", lc100[i], sep="")
# }
lc_1000 <- list(NA)
for (i in 1:length(lc1000)){
  lc_1000[[i]] <- artcites$M[(mdf$lc==lc1000[i])==T,]
  names(lc_1000)[i] <- paste("lc_", lc1000[i], sep="")
}

### So, now I have a cluster-specific set of objects from which to create by-cluster co-citation networks.

# Compute the co-citation networks for each of those clusters.
  # This takes a while, but it's much quicker than my scripts.
nets_fg100 <- list(NA)
for(i in 1:length(fg_100)){
  nets_fg100[[i]] <- biblioNetwork(fg_100[[i]], analysis="co-citation", network="references", sep=";", shortlabel = F)
}
# Currently not in use:
# nets_lc100 <- list(NA)
# for(i in 1:length(lc_100)){
#   nets_lc100[[i]] <- biblioNetwork(lc_100[[i]], analysis="co-citation", network="references", sep=";", shortlabel = F)
# }
nets_lc1000 <- list(NA)
for(i in 1:length(lc_1000)){
  nets_lc1000[[i]] <- biblioNetwork(lc_1000[[i]], analysis="co-citation", network="references", sep=";", shortlabel = F)
}

### Now, I have a set of cluster-specific co-citation networks (in bibliometrix format).
# Converting to igraph format.
g_fg100 <- list(NA)
#g_lc100 <- list(NA)
g_lc1000 <- list(NA)

for (i in 1:length(nets_fg100)){
  g_fg100[[i]] <- graph_from_adjacency_matrix(nets_fg100[[i]], mode="undirected", diag=F, weighted=T)  
}
# for (i in 1:length(nets_lc100)){
#   g_lc100[[i]] <- graph_from_adjacency_matrix(nets_lc100[[i]], mode="undirected", diag=F, weighted=T)  
# }
for (i in 1:length(nets_lc1000)){
  g_lc1000[[i]] <- graph_from_adjacency_matrix(nets_lc1000[[i]], mode="undirected", diag=F, weighted=T)  
}
# Now we have them all in igraph format.

#### Now to trim that down to the focal set
# First, grabbing the list of those w/ over 1k citations within this database
V(citation)$deg <- degree(citation, mode="out")
top_cites <- V(citation)$names[which(V(citation)$deg %in% sort(V(citation)$deg, decreasing=T)[1:12])]

# [1] "adler ps, 2002, acad manage rev, v27, p17, doi 10.2307/4134367"             
# [2] "bourdieu p., 1986, hdb theory res socio, doi doi 10.1002/9780470755679.ch15"
# [3] "burt r, 1992, structural holes soc"                                         
# [4] "coleman j., 1990, fdn social theory"                                        
# [5] "coleman js, 1988, am j sociol, v94, ps95, doi 10.1086/228943"               
# [6] "granovetter ms, 1973, am j sociol, v78, p1360, doi 10.1086/225469"          
# [7] "lin nan, 2001, social capital theor"                                        
# [8] "nahapiet j, 1998, acad manage rev, v23, p242, doi 10.2307/259373"           
# [9] "portes a, 1998, annu rev sociol, v24, p1, doi 10.1146/annurev.soc.24.1.1"   
# [10] "putnam r., 2000, bowling alone collap"                                      
# [11] "putnam rd, 1995, j democracy, v0006"                                        
# [12] "putnam robert d., 1993, making democracy wor"  

# Unfortunately, the name formats don't match here, so I need to do some manual identification
# I'm using another file to do that, just to not make this one get unwieldy. 
# See z_EntityResulotion.R for details of these merges.

load("data/entity_resolution.Rdata")
rg_fg100 <- list(NA)
for(i in 1:length(g_fg100)){
  g <- g_fg100[[i]]
  V(g)$id <- c(1:vcount(g))
  g2 <- induced.subgraph(g, c(fg100[[i]]$adler, fg100[[i]]$bourdieu, fg100[[i]]$burt, fg100[[i]]$coleman_fdn, fg100[[i]]$coleman_ajs, fg100[[i]]$granov, fg100[[i]]$lin, fg100[[i]]$nahapiet, fg100[[i]]$portes, fg100[[i]]$putnam_jd, fg100[[i]]$putnam_mdw, fg100[[i]]$putnam_ba))
  t <- c(1:vcount(g2))
  t[which(V(g2)$id %in% fg100[[i]]$adler)] <- 1
  t[which(V(g2)$id %in% fg100[[i]]$bourdieu)] <- 2
  t[which(V(g2)$id %in% fg100[[i]]$burt)] <- 3
  t[which(V(g2)$id %in% fg100[[i]]$coleman_fdn)] <- 4
  t[which(V(g2)$id %in% fg100[[i]]$coleman_ajs)] <- 5
  t[which(V(g2)$id %in% fg100[[i]]$granov)] <- 6
  t[which(V(g2)$id %in% fg100[[i]]$lin)] <- 7
  t[which(V(g2)$id %in% fg100[[i]]$nahapiet)] <- 8
  t[which(V(g2)$id %in% fg100[[i]]$portes)] <- 9
  t[which(V(g2)$id %in% fg100[[i]]$putnam_jd)] <- 11
  t[which(V(g2)$id %in% fg100[[i]]$putnam_mdw)] <- 12
  t[which(V(g2)$id %in% fg100[[i]]$putnam_ba)] <- 10
  #print(table(t)==unlist(lapply(fg100[[i]], length))) #just checking
  g3 <- contract(g2, t, vertex.attr.comb=list("weight"="sum", "first"))
  #print(sum(E(g2)$weight) == sum(E(g3)$weight))
  rg_fg100[[i]] <- g3
}

rg_lc1000 <- list(NA)
for(i in 1:length(g_lc1000)){
  g <- g_lc1000[[i]]
  V(g)$id <- c(1:vcount(g))
  g2 <- induced.subgraph(g, c(lc1000[[i]]$adler, lc1000[[i]]$bourdieu, lc1000[[i]]$burt, lc1000[[i]]$coleman_fdn, lc1000[[i]]$coleman_ajs, lc1000[[i]]$granov, lc1000[[i]]$lin, lc1000[[i]]$nahapiet, lc1000[[i]]$portes, lc1000[[i]]$putnam_jd, lc1000[[i]]$putnam_mdw, lc1000[[i]]$putnam_ba))
  t <- c(1:vcount(g2))
  t[which(V(g2)$id %in% lc1000[[i]]$adler)] <- 1
  t[which(V(g2)$id %in% lc1000[[i]]$bourdieu)] <- 2
  t[which(V(g2)$id %in% lc1000[[i]]$burt)] <- 3
  t[which(V(g2)$id %in% lc1000[[i]]$coleman_fdn)] <- 4
  t[which(V(g2)$id %in% lc1000[[i]]$coleman_ajs)] <- 5
  t[which(V(g2)$id %in% lc1000[[i]]$granov)] <- 6
  t[which(V(g2)$id %in% lc1000[[i]]$lin)] <- 7
  t[which(V(g2)$id %in% lc1000[[i]]$nahapiet)] <- 8
  t[which(V(g2)$id %in% lc1000[[i]]$portes)] <- 9
  t[which(V(g2)$id %in% lc1000[[i]]$putnam_jd)] <- 11
  t[which(V(g2)$id %in% lc1000[[i]]$putnam_mdw)] <- 12
  t[which(V(g2)$id %in% lc1000[[i]]$putnam_ba)] <- 10
  #print(table(t)==unlist(lapply(lc1000[[i]], length))) #just checking
  g3 <- contract(g2, t, vertex.attr.comb=list("weight"="sum", "first"))
  #print(sum(E(g2)$weight) == sum(E(g3)$weight))
  rg_lc1000[[i]] <- g3
}

save(top_cites, rg_lc1000, rg_fg100, g_fg100, g_lc1000, fg100, lc1000, art_citation, fg_100, lc_1000, nets_fg100, nets_lc1000, mdf, file="data/comms.Rdata")
#################################################################################

# I don't think a full graph plot really makes sense here.
# library(graphlayouts)
# #ct$layout <- layout.graphopt(ct)	# layout once so nodes don't move
# #bb <- layout_as_backbone(ct,keep = 0.4)
# # E(ct)$col <- FALSE
# # E(ct)$col[bb$backbone] <- TRUE
# a <- layout_with_pmds(ctgc, 50)
# 
# ggraph(ctgc,layout = "manual",x = a[,1],y = a[,2])+
#   geom_edge_link0(aes(edge_colour = "grey80"),edge_width = 0.1)+
#   geom_node_point(aes(fill = V(ctgc)$lc),shape = 21)+
#   scale_fill_brewer(palette = "Set1")+
#   scale_edge_color_manual(values=c(rgb(0,0,0,0.3),rgb(0,0,0,1)))+
#   theme_graph()+
#   theme(legend.position = "none")
# 
# plot.igraph(ct, layout=a, vertex.size=2, vertex.color=V(ct)$lc, vertex.label=NA)
