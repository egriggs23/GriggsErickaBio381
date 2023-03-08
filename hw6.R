library(tidyverse)
data("iris")
iris1<-filter(iris, Species %in% c("virginica", "versicolor")&Sepal.Length > 6 & Sepal.Width > 2.5) 
iris2<-select(iris1, Species, Sepal.Length, Sepal.Width)

iris3<-arrange(iris2, by = desc(Sepal.Length))

head(iris3)

#Create an iris4 data frame from iris3 that creates a column with a sepal 
#area (length * width) 
#value for each observation. How many observations and variables are in the data set?

iris4<-mutate(iris3,Sepal.Area=Sepal.Length*Sepal.Width)


iris5<-summarize(iris4,meanSepal.Length=mean(Sepal.Length, na.rm=TRUE),meanSepal.Width=mean(Sepal.Width, na.rm=TRUE),TotalNumber=n())
print(iris5)

irisSpecies<-group_by(iris4,Species)
iris6<-summarize(irisSpecies, meanSepal.Length=mean(Sepal.Length, na.rm=TRUE),meanSepal.Width=mean(Sepal.Width, na.rm=TRUE),Sample=n())
print(iris6)
