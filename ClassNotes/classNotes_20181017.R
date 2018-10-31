## Code from lecture 4

current.dir <- getwd() # If we store the current directory in a varaible, we can recover it later

setwd("/Users/ramongallego/GoogleDrive/Kelly_Lab")

getwd()


setwd(current.dir)


getwd()

# getwd() and setwd() won't work as expected in Rmarkdown - by default the wd is set to 
# the place in the hard drive where the Rmarkdown file is. If you use setwd() in a code chunk, 
# It will only take place within that chunk of code. This is useful as it allows you to 
# always work relative to the Rmarkdown file regardless the computer (windows, linux, mac) you are using

# If you must change the wd in a Rmarkdown, you can do it within the first chunk of code of your Rmarkdown,
# with the option
knitr::opts_knit$set(root.dir="A/folder/in/your/hard/drive")




### Field samples file

## Download file

getwd()
setwd("/Users/ramongallego/Lecture4/")

## Loading the field samples file

rawdata <- read.csv("field_samples.csv")

names(rawdata) # gives you the names of the object - also works with lists, tables
colnames(rawdata) # for dataframes - also rownames(rawdata) for the rows


dim(rawdata)  # Dimensions of the dataset

plot (temp~date_collected, data = rawdata) # Does not work bc temp is considered a factor


# what is the temp like?
rawdata$temp

cleandata <- rawdata # making the copy

cleandata$temp <- gsub("HOBO broke", NA, cleandata$temp)

cleandata$temp <- gsub("\"", "", cleandata$temp ) # Look for backslash quote, replace with nothing

as.numeric(cleandata$temp)

cleandata$temp <- as.numeric(cleandata$temp)

## Let's try the plot again

plot (temp~date_collected, data = cleandata)

plot(temp ~ as.factor(date_collected), data = cleandata)

str(cleandata$date_collected)

gsub ("[HAB]", NA, rawdata$temp) # an alternative to search for exact quotes is using regular expressions


### ADding a level to a factor
str(cleandata$subsite_name)

levels (cleandata$subsite_name)

cleandata$subsite_name.test <- as.character(cleandata$subsite_name)

cleandata$subsite_name.test[is.na(cleandata$subsite_name.test)] <- "center2"

levels(cleandata$subsite_name)

levels(cleandata$subsite_name) <- c("Apricot", "Melon", "Dishwasher", "Lu")

levels.now <- levels(cleandata$subsite_name)

## Add the fifth level

levels(cleandata$subsite_name) <- c(levels.now, "center2")

cleandata$subsite_name # it does not change the raw data

cleandata$subsite_name[is.na(cleandata$subsite_name)] <- "center2" # Now we can replace NAs with the fifth value we added

cleandata$subsite_name # 


OA.Samples <- read.csv("OA_Samples.csv")

#### Yay the tidyverse!
library ('tidyverse')
install.packages('tidyverse')