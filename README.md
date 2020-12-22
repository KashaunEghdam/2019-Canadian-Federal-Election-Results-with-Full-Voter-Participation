## Overview
This repository contains code for predicting the 2019 Canadian Federal Election if voter turnout was 100%. This study was conducted by Kashaun Eghdam. The purpose of this is to create a report that summarizes the results of a statistical model that we built. We found that  are strong predictors of respondents’ voter choice and we expected that Justin Trudeau would have won 54 percent of the national popular vote, with a 2 percent margin error. We detailed how to obtain the data used in this study as it is unable to be shared publicly.
The sections of this repo are: inputs, outputs, scripts.

Inputs contain data that are unchanged from their original. We use two datasets: The dataset we used in our report fall under copyright laws and thus we cannot include the direct data files.

CES data: To obtain this datatset, first go to https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/DUS88V/RZFNOV&version=1.0 and download the dta file. Then convert it to a csv file and rename it "ces2019_web.csv". Then make sure the file is in your working directory and all code should run accordingly. 

GSS data: to obtain this data first go to: http://www.chass.utoronto.ca/. Next click SDA @ CHASS, which should redirect you to sign in, then sign in. Then continue in English, then Crtl find GSS and click on the 2017 dataset. Next click download and choose a CSV data, with data definitions for STATA.Then include all variables in your download by clicking select all. Finally create the files, download and save them as. Using code created by Rohan Alexander, run the initial csv file through the code and it should produce a csv file, "gss.csv", which we use in our report.  

Outputs contain data that are modified from the input data, the report and supporting material.

- paper.rmd

- paper.pdf

- cells.csv

- table_1.pdf

Scripts contain R scripts that take inputs and outputs and produce outputs. These are:

data_cleaning_CES.R code to clean the survey dataset

data_preparation_GSS.R code to clean the post stratified dataset

appendix.rmd code for the entire paper

table_2_code.R

table_3_code.R

table_4_code.R
