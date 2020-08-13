library(tidyverse)

#Installed Tidyverse
HVOR HAR JEG DOWNLOADET DEN OG HVORDAN HAR JEG DOWNLOADET DEN? HVOR ER DEN FRA?
#Import dataset from readr
("~/Desktop/Violence & death/rate-of-violent-deaths-state-societies.csv")
#Copied the code into the script


#copied code into the script


#File appears in Environment -> Global Environment


#Copied code from Hax.odsbjerg.dk
rate_of_death %>%
ggplot(aes(x = Year, y = `Rate of violent deaths (state societies);`)) +
  geom_col() +
  xlab(NULL) +
  labs(x = "Year",
       y = "Rate of violent deaths (per 100.000)",
       title = "Rate of violent deaths (state societies)")
