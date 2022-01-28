---
title: "Readme for the helpme package"
author: "Daniel van der Meer"
date: "1/28/2022"
output: html_document
---
#First install devtools  
install.packages("devtools")  
#Load devtools  
library(devtools)  
#Install helpme  
install_github("danvdm/helpme")  
#load helpme  
library(helpme)  

## This package contains two functions:

The remind_me function and the cheat function.

The remind me function takes no input and remind you of some important things.
In the cheat function you can specify one out of four exercises from the third assignment of the PIPS course. The function will retun the solution for that exercise. 



