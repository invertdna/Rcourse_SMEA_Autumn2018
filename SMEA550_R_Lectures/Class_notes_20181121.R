#Class notes 20181121

ufo %>%                        #take your dataset and pipe it
  filter(country!="") %>%  #filter out those with no country listed
  group_by(year) %>% 
  #tell R you want to group observations by the columns `year` and `country`
  # summarize(Sightings = n()) 
  mutate(tot.peryear = n()) %>% 
  group_by(country,year) %>% 
  mutate(nsight = n()) %>% 
  summarise(proportion.per.year = nsight/tot.peryear)


split.country <- split(ufo, 
                       f =ufo$country, 
                       drop = T) 

lapply(split.country, function(x) {mean(as.numeric(x$duration..seconds, na.rm=T))})


library(ggmap)
#register_google(key = "") #your key here; register w google to get one
where <- geocode("United States")
map <- get_map(location = where, zoom = 4, source = "stamen")



ggmap(map) +
  geom_point(data = ufo[ufo$year == 1978,], aes(x = longitude, y = as.numeric(latitude)))