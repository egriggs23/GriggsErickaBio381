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

x <-random_data(z)
calculate_anova(x)
box_plot(x)

#new program
scatter_plot(x)


