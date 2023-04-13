library(dplyr) 
library(data.table) 

y <- function(vector=0) {count =0
  for (i in 1:length(x))
  if (x[i] == 0) {
    count = count + 1}

return(count)}


z <- c(2, 0, 3, 12,0, 5, 19, 23, 64,0,0)
zsub <- z[z ==0]
length(zsub)

m <- matrix(nrow = 2,ncol = 3)

my_matrix <- function(x=2, y=3){ 
#m <- matrix(nrow = x,ncol = y)

for (i in 1:x) {
 for (j in 1:y) {
  m[i,j] <- (i * j)
 }
}
  return(m)
} 

my_matrix()

#a
trt_group <- c(rep("Control",4),rep("Treatment",5), rep("Treatment 2", 20))
print(trt_group)

z <- c(runif(4) + 1, runif(5) + 10, runif(20)+4)
print(z)

df <- data.frame(trt=trt_group,res=z)
print(data)

#b
shuffled_df<- data.frame(c1=df$trt, c2=sample(df$res))
vector<-aggregate(shuffled_df$c2, list(shuffled_df$c1), FUN=mean)
print(vector)

  #c
  #Use a for loop to repeat the function in b 100 times. Store the results in a data frame that has 1 column indicating the replicate number and 1 column for each new group mean, for a total of 4 columns.
  
shuffle <- function(data=NULL){
  shuffled_df<- data.frame(c1=df$trt, c2=sample(df$res))
  vector<-aggregate(shuffled_df$c2, list(shuffled_df$c1), FUN=mean) 
}
  
  newdataframe <- expand.grid(replicate=1:100,
                              Control=NA,
                              TRT1=NA,
                              TRT2=NA
                              )
  
  for(i in 1:100) {
    x<-shuffled_df<- data.frame(c1=df$trt, c2=sample(df$res))
    vector<-aggregate(shuffled_df$c2, list(shuffled_df$c1), FUN=mean)
    
    newdataframe[i,1] <-i
    newdataframe[i,2] <- x[1,2] 
    newdataframe[i,3] <- x[2,2] 
    newdataframe[i,4] <- x[3,2]
}
    
  }
  




