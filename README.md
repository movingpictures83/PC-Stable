# PCStable
# Language: R
# Input: CSV
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: pcalg_2.6.10, igraph_1.2.5

PluMA plugin that runs the PC-Stable algorithm for causal relations (Colombo and Matthuis, 2014).

The program takes as input a CSV file consisting of samples (row) and measurements (columns), where entry (i,j) is the amount of measurement j in sample i.

Causal relations between measurements are then output as a CSV file.  The causal structure is assumed to be a binary (unweighted) network, with entry (i,j) representing the causal relationship between measurements i and j.
