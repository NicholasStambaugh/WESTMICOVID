df <- data.frame(County=c('Kent','Ottawa','Muskegon','Allegan','Ionia','Barry'),
                 ConfirmedCases=c(46491,20069,10069,6229,3886,3238))
head(df)

df2 <-data.frame(County=c('Kent','Ottawa','Muskegon','Allegan','Ionia','Barry'),
                 Deaths=c(593,300,291,86,61,38))
head(df2)

library(ggplot2)
p<-ggplot(data=df, aes(x=County, y=ConfirmedCases)) +
  geom_bar(stat = "identity", fill="lightblue") + 
  ggtitle("Confirmed Cases by County in West MI")
p
p + coord_flip()



p2<-ggplot(data=df2, aes(x=County, y=Deaths)) + 
  geom_bar(stat = "identity", fill="steelblue") +
  ggtitle("Deaths by County in West MI")
p2
p2 + coord_flip()
