# PCStable
# Language: R
# Input: CSV
# Output: RDS
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: bnlearn 4.7

PluMA plugin that runs the PC-Stable algorithm for causal relations (Colombo and Matthuis, 2014).

The program takes as input a CSV file consisting of samples (row) and measurements (columns), where entry (i,j) is the amount of measurement j in sample i.

The program will produce a plot, and additionally an RDS file representing a collection of data, which can be read by a future pipeline stage.
