install.packages('tidyverse')
library(tidyverse)
head(msleep)
#Select() for select any numbers of colummns
sleeptime<-select(msleep,name,sleep_total)
sleeptime
head(sleeptime)
#filter() use for retrieve specific rows
filter(msleep,order=='Carnivora')
#muate() create new variable 
mtcar<-mtcars
head(mtcar)
mtcars_n<-mutate(mtcar,mp_cyl=mpg*cyl)
head(mtcars_n)
#Pipe line function %>%
sub_m<-mtcar%>%select(mpg,cyl,disp,hp)%>%mutate(dispxhp=disp*hp)
names(sub_m)
#separate 
df<-data.frame(x=c("a:1","b:2","c:3","d:4"))
df%>%separate(x,c("Key","value"),":")%>%str
Planets[1]
data1<-data.frame(variable1=rep(LETTERS[1:3],each=3),variable2=rep(paste0("Fact",c(1,2,3)),3),num=1:9)
head(data1)
spread(data1,variable2,num)
#gather function
head(iris)
mini_iris<-iris%>%group_by(Species)%>%slice(1)
mini_iris
mini_iris%>%gather(key = "flower_att",value = "meaurements",-Species)
#unit function
library(datasets)
head(mtcars)
merg<-unite(mtcars,'Vs_am',c('vs','am'))
head(merg)
