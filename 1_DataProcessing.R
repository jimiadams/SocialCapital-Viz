library(bibliometrix)

# Start by reading in the data (.txt files from ISI)
fn <- list.files("raw_data", full.names=TRUE)
df <- convert2df(file=fn, dbsource="isi") # 21160 records
df_art <- df[which(df$DT=="ARTICLE" & is.na(df$PY)==F),] # removing non-articles and early access (2021 pubs)
# --> 15,347 articles

# These don't really show a ton that I'm after, but it's not a bad thing to take a peek at them.
results <- biblioAnalysis(df_art, sep = ";")
summary(results)

save(df, df_art, file="data/social_capital.rdata") # Note the first element specifies which objects to save.
