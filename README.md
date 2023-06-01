# Social Capital Visualization
Using bibliometric analyses to visualize fractures in social capital research. Paper to be published in Socius w/ Kate Vinita Fitch. The basic idea here is to provide a preliminary characterization of the existing divides and lack of consensus around conceptualization and usage of social capital as a concept.

This repo provides the code (but not the data)^[To comply with Web of Science data use agreements, this repo does not include raw, nor compiled datasets of complete records.] for replicating the analyses in the manuscript.

## Basic Steps - 
0. As with most of these types of analyses in the work I've done w/ Ryan Light (see details [here](https://sites.google.com/site/jimiadams/projects/ideas)), I start from ISI. There's a screengrab version of my search criteria [here](Search_Criteria.png).^[If replicating, be sure to grab the "Full Record and Cited References" versions of these files.] The search^[This was executed on Oct 23, 2020, and is constrained on the front end by my university's subscription to ISI (only goes back through 1974). But I can't imagine either of those really determine what we find here.] narrowly defined the corpus as all documents including "social capital" as a topic^[The ISI "topic" field includes searching the title, abstract, and keywords of each document.]
1. **1_DataProcessing.R** - I used the [bibliometrix](https://www.bibliometrix.org/) package to process those files into dataframe format.
1. **2_BuildNetworks.Rmd** - I used an old script of mine Scientometric_Networks.R (in the scripts folder) to construct citation, co-citation, and bibliographic coupling networks from these data. 
    - Dependencies: social_capital.Rdata (created in step 1).
    - As an intermediate step here, there is some manual data cleaning of the "key citations" to ensure each citation of them is combined, using [this file](z_EntityResolution.R).
1. **3_NetworkCommunities.R** - Using basic functions in the [igraph](https://igraph.org/r/) package, I identify community solutions for the citation network, then extract co-citation rates within those communities, and compare those to base-rate expectations.
    - Dependencies: networks.Rdata (created in step 2).
1. **4_TablesFigures.Rmd** - This file draws on the elements compiled from the steps above to build the analyses actually presented in the paper, and some supplementary information.
    - Dependencies: many of the objects created in the various steps above (including those in the bibmx_networks.Rdata, networks.Rdata, and clusters.Rdata environments as well as the louvain.rda object).
    
## Included Data Objects:
1. **data/louvain.Rda** - the primary results from the louvain solution that is presented in the paper. This environment includes 3 objects:
      a. *lc_cites* - the number of citations received by each "key paper" from papers in each of the identified communities (this provides the information for the top panel of Figure 1).
      a. *lcct* - the frequency of co-citations among the "key papers" within each of the identified communities.
      a. *lc_z* - the computed z-scores for the divergence from random expectations (see #3 below) of those co-citation rates (this provides the information for the bottom panel of Figure 1).
1. **data/fast_greedy.Rda** - the corresponding elements to #1, but using the fast greedy community solution; here the "lc" prefixes above are all replaced with "fg"s.
1. **baseline.Rdata** - this includes a single object that is a list of 1000 draws of random co-citation rates among the "key papers" in the corpus. See a text explanation of how this baseline was determined in the Appendix, or the code for computing it in the 3_NetworkCommunities.R script.
