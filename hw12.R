library(ggplot2)

df <- Nuttall_Current

library(ggplot2)
ggplot(df,aes(x=Hg,y=PLAS))+geom_point()+theme_bw()+
  labs(x="Blood Hg (ppm)", y="Plasmodium Infection")+
  geom_smooth(method="glm", method.args=list(family="binomial")+ geom_point(size=7,shape=21) + xlim(0,1) + ylim(0,7))

data <- data.frame(df$Sex,df$Hg)
new_data<-na.omit(data)

my_xlab <- paste(levels(new_data$df.Sex),"\n(N=",table(new_data$df.Sex),")",sep="")
legend_title<- Sex
# plot
ggplot(new_data, aes(x=df.Sex, y=df.Hg, fill=df.Sex)) +
  geom_boxplot(varwidth = TRUE, alpha=0.2) +
  theme(legend.position="right") +
  scale_x_discrete(labels=my_xlab)+labs(x="Sex",y="Blood Hg (ppm)") +guides(fill=guide_legend(title=""))

dff<-Nuttall
ggplot(dff, aes(x = Hg, fill = State)) +
  geom_histogram(position = 'identity', alpha = 0.4)+labs(x="Blood Hg (ppm)", y="Frequency")


