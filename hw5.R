n_dims <- 5
vec <- 1:n_dims^2
sample(x=vec)
m <- matrix(data=vec,ncol=n_dims)
print(m)
t(m)
print(m)
rowSums(m, na.rm=FALSE)
rowMeans(m, na.rm=FALSE)
e <- eigen(m) 
print(e)
typeof(e) #complex values meaning they are imaginary

z <- sample(100)
my_matrix <- matrix(data=z,ncol=4,nrow = 4)
b <- sample(100)
print(b)
my_logical <- (b>=25)
print(my_logical)
a <- (a:z)
my_letter <- sample(letters[1:26])
my_list <- list(my_matrix,my_logical,my_letter)
str(my_list)
print(my_list)

list1 <- my_list[[1]][2,2] 
list2 <- my_list[[2]][2]
list3 <- my_list[[3]][2]        
typeof(list1) #interger
typeof(list2) #logical
typeof(list3) #character
final_list <- c(list1,list2,list3)
print(final_list)
typeof(final_list) #character

myuni <- runif(26,0,10)
my_letters <- sample(toupper(letters[1:26]))
df <- data.frame(myuni,my_letters)
df[sample(1:26,4),1] <- NA
print(df)
which(is.na(df$myuni))

df[order(df$my_letters),]

mean(df$myuni, na.rm=TRUE)



                                