library(tidyverse)
library(readr)
x <- read_csv("C:/Users/Ericka/Desktop/GriggsErickaBio381/Hw11 Dataset/Nuttall.csv")
View(x)

for(i in 2010:2022){ 
  y<-x%>%
    filter(`Year Collected`==i)
output<-paste0(i)
write.csv(y, file=output, sep = ",", col.names = TRUE, row.names = FALSE)
}
 

files <- list.files(pattern = ".csv") 
for(i in sequence(length(files))){
  Data <- read.csv(files[i])
  Means <- apply(Data, 8, mean)
}

result <- cbind(files,mean)
write.csv(result,"means.csv")
