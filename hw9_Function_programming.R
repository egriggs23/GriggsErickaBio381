#Load Library
library(sqldf)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(plotly)

#Source Functions
source("hw9_functions.R")

#Global Variables
z<- PlantGrowth

# Programs

random_data(z)
calcualte_anova(z)
plot(z)



