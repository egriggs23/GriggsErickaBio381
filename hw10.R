

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
print(df)

x <-df(group_by("trt"), summarise(across(everything(), mean)  

