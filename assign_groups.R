library(here)
library(tidyverse)

people <- read.csv(here('attendees.csv')) %>%
  mutate(group_id = rep(1:9, 5))

#Set params
n_groups = 9
group_size = 5

# Number of people and group size
num_people = nrow(people)

# Shuffle the people 
set.seed(69)
random_order = sample(num_people)
groups = people[random_order, ]

#Sort
groups %>% 
  arrange(group_id)

write.csv(groups, "groups.csv")
