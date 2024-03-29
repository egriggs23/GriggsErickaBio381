library(sqldf)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(plotly)
data("PlantGrowth")
z<-PlantGrowth
str(z$group)
summary(z)

ControlData <- filter(z,group=="ctrl")
mean(ControlData$weight)
sd(ControlData$weight)


Treatment1 <- filter(z,group=="trt1")
mean(Treatment1$weight)
sd(Treatment1$weight)

Treatment2 <- filter(z, group=="trt2")
mean(Treatment2$weight)
sd(Treatment2$weight)

Ctrl <- rnorm(n=10, mean=5.032, sd
                     =0.58)

Trt1 <- rnorm(n=10, mean=4.66, sd
                     =0.79)
Trt2 <- rnorm(n=10, mean=5.526, sd
                     =0.44)
df <- data.frame(Ctrl,Trt1,Trt2, stringsAsFactors = FALSE)

dff <- df %>% pivot_longer(cols=c('Ctrl', 'Trt1', 'Trt2'),names_to='Treatment',values_to='Weight') 

original.aov <- aov(Weight ~ Treatment, data = dff)
summary(original.aov)

ggplot(dff, aes(x = Treatment, y = Weight)) +
  geom_boxplot()




Ctrl <- rnorm(n=1, mean=1.032, sd
              =0.58)

Trt1 <- rnorm(n=1, mean=6.66, sd
              =0.79)
Trt2 <- rnorm(n=1
              , mean=5.526, sd
              =0.44)
df <- data.frame(Ctrl,Trt1,Trt2, stringsAsFactors = FALSE)

dff2 <- df %>% pivot_longer(cols=c('Ctrl', 'Trt1', 'Trt2'),names_to='Treatment',values_to='Weight') 

aov2 <- aov(Weight ~ Treatment, data = dff2)
summary(aov2)





































