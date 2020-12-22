#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from the 2017 General Social Survey
# Author: Kashaun Eghdam
# Date: 22 December 2020
# Contact: k.eghdam@mail.utornto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the GSS data and saved it to inputs/data
# - Don't forget to gitignore it!

# grab GSS dataset
gss <- read_csv("gss.csv")

# Select variables of interest
select_data2 <- gss %>%
  dplyr::select(age,
                sex,
                province,
                education,
                total_children,
                marital_status
  ) %>% 
  # rename variables 
  rename(gender = sex,
         children = total_children,
  )%>%
  na.omit() 

# grouping age into 5 categories, removing all other gender besides "male" and "female", confining education groupings, rename "Bloc Québécois" from vote_2019, and lastly remove all NA values from this data.
clean_data_GSS <- select_data2 %>%
  mutate(age = cut(as.numeric(age), 
                   breaks = c(18, 30, 40, 50, 60, 100), 
                   right = FALSE,
                   labels = c("18 to 29", 
                              "30 to 39", 
                              "40 to 49", 
                              "50 to 59",
                              "60+")),
         children = cut(as.numeric(children), 
                        breaks = c(0,1,7), 
                        right = FALSE,
                        labels = c("no", 
                                   "yes")),
         marital_status = case_when(marital_status == "Married" ~ "Married",
                                    marital_status == "Living common-law" ~ "Living with a partner",
                                    marital_status == "Divorced" ~ "Divorced",
                                    marital_status == "Single, never married" ~ "Never Married",
                                    marital_status == "Separated" ~ "Separated",
                                    marital_status == "Widowed" ~ "Widowed"),
         education = case_when(education == "Less than high school diploma or its equivalent" 
                               ~ "less than high school diploma",
                               education == "High school diploma or a high school equivalency certificate" 
                               ~ "Completed secondary/ high school",
                               education == "Trade certificate or diploma"
                               ~ "Completed college or equivalent",
                               education == "University certificate, diploma or degree above the bach..." ~ 
                                 "Univeristy degree above Bachelor's degree",
                               education == "University certificate or diploma below the bachelor's level" ~ 
                                 "Bachelor's degree",
                               education == "Bachelor's degree (e.g. B.A., B.Sc., LL.B.)" ~ "Bachelor's degree",
                               education == "College, CEGEP or other non-university certificate or di..." ~ 
                                 "Completed college or equivalent"
         )) %>%
  na.omit()