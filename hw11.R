library(tidyverse)
library(readr)
library(dplyr)
Nuttall <- read_csv("~/GriggsErickaBio381/Nuttall.csv")
x<-Nuttall
setwd(~/GriggsErickaBio381/HW11 Output)
for(i in 2010:2022){ 
  y<-x%>%
    filter(`Year Collected`==i)
output<-paste0(i,".csv")
 write.csv(y, file=output, sep = ",", col.names = TRUE, row.names = FALSE)
}

files <- list.files(pattern = ".csv")  

dat<-list()
for(i in sequence(length(files))){
  Data <- read.csv(files[i])
  col.avg <- mean(Data[, "Hg"], na.rm = TRUE)
  dat[i]<-col.avg
}

Blood_Hg <- unlist(dat, use.names = FALSE)
hist(Blood_Hg)
