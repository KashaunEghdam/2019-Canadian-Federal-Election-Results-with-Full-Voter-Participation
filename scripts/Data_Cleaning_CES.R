# Purpose: Prepare and clean the survey data downloaded from the Canadian Election Study
# Author: Kashaun Eghdam
# Date: 22 December 2020
# Contact: k.eghdam@mail.utornto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the CES data and saved it to inputs/data
# - Don't forget to gitignore it!

# Grabbing ces2019_web dataset
ces2019_web <- read_csv("ces2019_web.csv")

# Converting dataset to factor form
ces2019_web <- labelled::to_factor(ces2019_web)
head(ces2019_web)

# Select variables of interest
select_data <- ces2019_web %>%
  dplyr::select(cps19_votechoice,
                cps19_yob,
                cps19_gender,
                cps19_province,
                cps19_education,
                cps19_children,
                cps19_marital) %>% 
  # rename variables 
  rename(vote_2019 = cps19_votechoice,
         age = cps19_yob, 
         gender = cps19_gender,
         province = cps19_province, 
         education = cps19_education,
         children = cps19_children,
         marital_status = cps19_marital
  )%>%
  na.omit() 

# grouping age into 5 categories, removing all other gender besides "male" and "female", confining education groupings, rename "Bloc Quebecois" from vote_2019, and lastly remove all NA values from this data.
clean_data_CES <- select_data %>%
  mutate(age = case_when(age <= 1959 ~ "60+",
                         1960 <= age & age <= 1969 ~ "50 to 59",
                         1970 <= age & age <= 1979 ~ "40 to 49",
                         1980 <= age & age <= 1989 ~ "30 to 39",
                         1990 <= age ~ "18 to 29"),
         gender = case_when(gender == "A woman" ~ "Female", 
                            gender == "A man" ~ "Male"),
         children = case_when(children == "Yes" ~ "yes",
                              children == "No" ~ "no"),
         marital_status = case_when(marital_status == "Married" ~ "Married",
                                    marital_status == "Living with a partner" ~ "Living with a partner",
                                    marital_status == "Divorced" ~ "Divorced",
                                    marital_status == "Never Married" ~ "Never Married",
                                    marital_status == "Separated" ~ "Separated",
                                    marital_status == "Widowed" ~ "Widowed"),
         education = case_when(education == "No schooling" ~ "less than high school diploma",
                               education == "Some elementary school" ~ "less than high school diploma",
                               education == "Completed elementary school" ~ "less than high school diploma",
                               education == "Some secondary/ high school" ~ "less than high school diploma",
                               education == "Professional degree or doctorate" ~ 
                                 "Univeristy degree above Bachelor's degree",
                               education == "Master's degree" ~ 
                                 "Univeristy degree above Bachelor's degree",
                               education == 
                                 "Some technical, community college, CEGEP, College Classique" ~ 
                                 "Completed secondary/ high school",
                               education == "Some university" ~ "Completed secondary/ high school",
                               education == "Completed secondary/ high school" ~ 
                                 "Completed secondary/ high school",
                               education == "Bachelor's degree" ~ "Bachelor's degree",
                               education == "Completed technical, community college, CEGEP, College Classique" ~ 
                                 "Completed college or equivalent"
         ),
         # Bloc Quebecois had a unicode character in replace of the e since é is not recognizable by r, this code section attempts to rename the Bloc Quebecois
         vote_2019 = case_when(vote_2019 == "Liberal Party" ~ ".Liberal Party",
                               vote_2019 == "Conservative Party" ~ "Conservative Party",
                               vote_2019 == "ndp" ~ "NDP",
                               vote_2019 == "Green Party" ~ "Green Party",
                               vote_2019 == "People's Party" ~ "People's Party",
                               vote_2019 == "Another party (please specify)" ~ "Another party (please specify)",
                               vote_2019 == "Don't know/ Prefer not to answer" ~ "Don't know/ Prefer not to answer",
                               vote_2019 != "Liberal Party" | vote_2019 != "Conservative Party"| 
                                 vote_2019 != "ndp"| vote_2019 != "Green Party"| 
                                 vote_2019 != "People's Party" | vote_2019 != "Another party (please specify)" | 
                                 vote_2019 != "Don't know/ Prefer not to answer" ~ "Bloc Quebecois")) %>%
  # remove "Don't know/ Prefer not to answer" for possible responses to vote_2019
  filter(vote_2019 %in% c(".Liberal Party", "Conservative Party","NDP","Bloc Quebecois","Green Party",
                          "People's Party")) %>%
  # remove "Northwest Territories", "Nunavut" and "Yukon" to match with GSS
  filter(province %in% c("Alberta", "British Columbia","Manitoba","New Brunswick","Newfoundland and Labrador",
                         "Nova Scotia","Ontario","Prince Edward Island","Quebec","Saskatchewan")) %>%
  na.omit()