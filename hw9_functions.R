
#Load in Data and Clean

random_data <- function(z)
{m <-z%>%
  group_by(group)%>%
  summarise_at(vars(weight), list(name=mean))
s <-z%>%
  group_by(group)%>%
  summarise_at(vars(weight), list(name=sd), )
df <-cbind(s,m)
df2 <- df[,-3]


Ctrl <- rnorm(n=10, mean= df2$name.1[1], sd= df2$name[1])

Trt1 <- rnorm(n=10, mean=df2$name.1[2], sd =df2$name[2])
Trt2 <- rnorm(n=10, mean=df2$name.1[3], sd=df2$name[3])
df <- data.frame(Ctrl,Trt1,Trt2, stringsAsFactors = FALSE)

dff <- df %>% pivot_longer(cols=c('Ctrl', 'Trt1', 'Trt2'),names_to='Treatment',values_to='Weight')  

    return(dff)}



#calculate stuff
calcualte_anova <- function(z) {original.aov <- aov(Weight ~ Treatment, data = dff)
return(summary(original.aov))}

#plotting

plot <- function(z) {ggplot(dff, aes(x = Treatment, y = Weight)) +
  geom_boxplot()}


#summarize


