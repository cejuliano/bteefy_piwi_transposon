# PIWI-piRNA pathway-mediated transposable element repression in Hydra somatic stem cells

## Introduction

This repository contains code, scripts and files necessary to reproduce analyses presented in the following biorXiv preprint: 

>Teefy BB, Siebert S, Cazet JF, Lin H, and Juliano CE (2019) PIWI-piRNA pathway-mediated transposable element repression in Hydra somatic stem cells.

piRNA, degradome, and differential gene expression count files are available from GEO repository GSE135440.

## Description of files in the repository:

## Code

R Markdown documents with analysis code (also available as knitted pdfs).

`1_piRNA_and_Degradome_Counts.Rmd`  
 - Generation of piRNA and degradome count files, transcript classification
 
`2_Differential_Gene_Expression_GO_Analysis.Rmd`
 - hywi knockdown - Differential Gene Expression analysis, GO-term enrichment

`3_Ping_Pong_Phasing.Rmd`
 - Ping-pong hit count files, ping-pong overlap frequency, ping-pong hit classification, piRNA phasing, Z-score analysis

`4_Lineage_Sorted_piRNA_Mapping.Rmd` 
 - Lineage-sorting and counting of piRNAs

`5_Single_Cell_Data_Exploration.Rmd` 
 - Assessment of homeostatic epithelial expression of putative hywi targets
