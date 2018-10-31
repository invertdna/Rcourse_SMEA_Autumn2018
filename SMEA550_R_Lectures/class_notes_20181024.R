for(x in 1:5){    #for each value of an iteration variable (here called "i", but it can be anything) between 1 and 5...
 print( x * 3 )      #do this thing 
}      


results.vector <- c()                             #create an empty container in which to store results
for (i in 1:length(unique(myData$Month))){         #set up the loop; for each unique Month...
  x <- myData$AreaSampled[myData$Month == i]      #create a subset of AreaSampled in that Month...
  y <- myData$Barnacles[myData$Month == i]        #create a subset of Barnacles counted in that Month...
  results.vector[i] <- cor(x, y)                    #calculate a correlation with cor(), and store that value
}

results.vector  #

origins <- unique(flights$origin)

for (airport in origins){
  print (airport)
  temp <- flights[flights$origin == airport, ]
  print (nrow(temp))
}

for (i in 1:nrow(Beach.comm)){
  print(summary(Beach.comm[i,]))
}

summary(Beach.comm)

apply(Beach.comm, 1, mean) 

