```r
# Create statistical summary of Anscombe's quartet and visualization

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

ggplot(quartet,aes(x,y)) +geom_point() + geom_smooth(method=lm,se=FALSE) + face_wrap(-set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen, aes(x=y, y=y, colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)
