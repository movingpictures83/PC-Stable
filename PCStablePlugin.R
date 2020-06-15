library(pcalg)
library(igraph)

input <- function(inputfile) {
  mydata <<- read.csv(inputfile)
}

run <- function() {
   suffStat <- list(C = cor(mydata), n = nrow(mydata))
   varNames <- colnames(mydata)
   results <<- pc(suffStat, indepTest = gaussCItest,
                labels = varNames, alpha = 0.01)
}

output <- function(outputfile) {
   write.csv(as.matrix(as_adj(graph_from_graphnel(results@graph))), outputfile) 
}
