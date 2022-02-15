#rm(list = ls())

library(bnlearn)
#setwd("D:\\FIU\\Causal Network Inference in Cancer") # This is input folder, input and output file will be in this directory


input <- function(inputfile) {
   data_file_name <<- inputfile #input file
   dff <<- read.csv(data_file_name)
}

##########################################################################################
# PC STABLEa
# Input: asv.transpose.norm.csv
# Output: Plot
run <- function() {
print("RUNNING PC STABLE...")
#### Pc stable Algorithm
dff <<- dff[,-1]
dades <- lapply(dff, as.numeric)
bn_df <- data.frame(dades)
bn_df <- na.omit(bn_df)
resGS<<- pc.stable(bn_df, cluster = NULL,whitelist = NULL, blacklist = NULL, test = "zf",
                  alpha = 0.05, B = NULL, debug = F, undirected = FALSE)

print("DONE.")
}

output <- function(outputfile) {
print("PLOTTING...")
####
plot(resGS)
saveRDS(resGS, outputfile)
print("DONE.")
}
##########################################################################################

