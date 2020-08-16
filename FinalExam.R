#Create new script and install needed packages: tidyverse 

#Load needed libraries:

library(tidyverse)


#Import downloaded dataset from readr, take option from text (readr)

#Data is from "https://ourworldindata.org/grapher/rate-of-violent-deaths-state-societies?tab=table" and has been downloaded and added to this repository

#Since the dataset is uploaded to this repository we can read it in using the URL

rate_of_death <- read_csv("https://raw.githubusercontent.com/MohamedMoussa95/FinalExam.R/master/rate-of-violent-deaths-state-societies.csv")

#The file appears in the Global Enviroment section located on the right upper corner

#Go to http://hax.odsbjerg.dk/twitter_scrape.html and copy the code from 4. Visualisation

#Copy paste the code into RStudio

#Delete the first three lines of code after "dkpoltweets_ttm %>%"

#Change upperline "dkpoltweets_ttm %>%" to "rate_of_death%>%

#Change the x-axis to "Year" 

#Change the y-axis to "Rate of violent deaths (per 100.000)"

#Need to fix the titles so they corrrespond to the datasheet

#Go to "labs" section of the script and change x-axis once more fro "Count" to "Year"

#Go to "labs" section of the script and change y-axis from "Unique words" to "Rate of violent deaths (per 100.000)

#Go to "labs" section of the script and change main title from "Count of unique words found in dkpol tweets" to "Rate of violent deaths (state societies)

#Final code look like this:

rate_of_death %>%
  ggplot(aes(x = Year, y = `Rate of violent deaths (state societies);`)) +
  geom_col() +
  xlab(NULL) +
  labs(x = "Year",
       y = "Rate of violent deaths (per 100.000)",
       title = "Rate of violent deaths (state societies)")

#Save the plot for dissemination:
ggsave("rate_of_deaths_statesocieties.png")



