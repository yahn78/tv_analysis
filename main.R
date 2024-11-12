library(tidyverse)
library(here)

tv_house_table <- gss_cat %>% 
  filter(age >= 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hour = mean(tvhours, na.rm = T))

write_csv(tv_house_table, here("tv_hour_by_marital.csv"))
