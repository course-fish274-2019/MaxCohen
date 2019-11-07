#Exercise 1 - Set up Git - Done
fish_data <-  read.csv("data/Gaeta_etal_CLC_data_1.csv")
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

#Exercise 2 - First Solo Commit  
#This code adds a new column to the fish_data table that lists all data sets with length > 300 as "big", and all lengths < 300 as "small"
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#Exercise 3 - Second Solo Commit 
fish_data_nosmallfish <- filter(fish_data_cat, length < 1)

#Exercise 4 - Commit Multiple Files  

#Exercise 5 - Pushing Changes 
library(tidyverse)
ggplot(data = fish_data) + 
  geom_point(mapping = aes(x = length, y = scalelength, color = lakeid)) + 
  labs(x = "length [mm]", y = "scale length [mm]", title = "length vs. scale length") 

#Exercise 6 - Pulling and Pushing
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80)
ggsave("figures/fish_data_cat.jpg")



