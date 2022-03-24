#### Preamble ####
# Purpose: Clean the survey data downloaded from 
# Author: Shan Lin
# Data: 3 January 2021
# Contact: mathilda.lin@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Shan Lin 
# Data: 20 March 2021
# Contact: mathilda.lin@utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
)
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data = raw_data %>% 
  select(agema1c,
         famtype,
         sex, 
         apardivc) %>%
  filter(agema1c <= 50,
         apardivc < 96) %>%
  mutate(sex = ifelse(sex == 1, "Male", "Female")) %>%
  mutate(famtype = case_when(
    famtype == 1 ~ "Couple only",
    famtype == 2 ~ "Intact family",
    famtype == 3 ~ "Step-family with common child",
    famtype == 4 ~ "Step-family without a common child",
    famtype == 5 ~ "Lone parent family",
    famtype == 6 ~ "No spouse/partner or children in the household"
  )) %>%
  rename(age = agema1c,
         type = famtype,
         aged = apardivc)
#### What's next? ####





rm(raw_data)
         

#### What's next? ####



         