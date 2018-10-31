#class notes / scratch   Oct 10

par(mfcol = c(2,2))

x = seq(-10,10, 0.1)  #this creates a numeric vector from 0 to 6.5 by increments of 0.1
y = sin(x)  #this takes the sin(x)
plot(y~x, pch = 19, col ="navy",
     ylab="Fun", xlab="Time (AM)",
     xlim=c(-10,10), ylim=c(-5,5))
  points(cos(x)~x, pch = 19, col = "tomato")  
  points(tan(x)~x, pch = 19, col = "gold")
  
  x = seq(-10,10, 0.1)  #this creates a numeric vector from 0 to 6.5 by increments of 0.1
  y = sin(x)  #this takes the sin(x)
  plot(y~x, pch = 19, col ="turquoise",
       ylab="Fun", xlab="Time (AM)",
       xlim=c(-10,10), ylim=c(-5,5))
  points(cos(x)~x, pch = 19, col = "lightgrey")  
  points(tan(x)~x, pch = 19, col = "gold")  
  
  
  library(yarrr)
  plot(y= pirates$height,
       x= pirates$weight)
  

  
  plot(y = 1:10,              #create a sequence of numbers from 1 to 10
       x = sample(1:10, 10),  #randomly draw numbers from 1 to 10 
       pch="W"
  )
  
  ?wesanderson

  # Histogram of pirates height 
  
  plot(density(pirates$height ))
  hist(pirates$height,freq = F,
       breaks = 50,
       add= T)
  
  
  #parameters of plotting in base R
  ?par
  
  ## sin (x) plot using ggplot  
  library(ggplot2)
  
  x = seq(0,6.5, 0.1)  #this creates a numeric vector from 0 to 6.5 by increments of 0.1
   y = sin(x)
 
   ggplot(data = pirates, aes(x= height,
                              y = weight)) +
     geom_point(aes(color = college,
                    
                    size = beard.length)) +
     facet_wrap(~sword.type)
     
   
   
  
  
