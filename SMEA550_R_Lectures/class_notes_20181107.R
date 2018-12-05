#notes for class 20181107

ggplot(mpg) #creates empty canvas, but with mpg in memory

ggplot(mpg,
       aes(x= manufacturer,
           y = hwy)) +
  geom_violin()+
  geom_point() +
  geom_violin(aes(y = cty), fill = "red") +
  geom_point(aes(y= mean(cty)))
# you can add a second geometry - if they are on the same scale
ggplot(data = mpg,   
       aes(x = displ, y = hwy , color = manufacturer)) +  #same code as above, but now with...
  geom_point() 


ggplot(data = mpg,   
       aes(x = displ, y = hwy , color = manufacturer)) +  #same code as above, but now with...
  geom_point(aes(shape = class)) 

baseinfo + geom_boxplot()
baseinfo + geom_smooth()

###FUN COLOR WEBSITES
http://colorbrewer2.org
http://colorlisa.com/
http://tools.medialab.sciences-po.fr/iwanthue/
  


