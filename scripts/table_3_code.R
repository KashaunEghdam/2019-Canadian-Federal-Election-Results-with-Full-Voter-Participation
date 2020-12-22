#### Preamble ####
# Purpose: to display how table 3 was calculated 

# using values from table 2, we multiplied the number of seats in each province by the pertange of voters in each province that voted for each party
results_provinces_seats <- matrix(c(0,15,2,7,7,11,75,4,53,0,174,
                                    34,22,11,3,0,0,41,0,2,13,126,
                                    0,0,0,0,0,0,0,0,23,0,23,
                                    0,5,1,0,0,0,5,0,0,1,12,
                                    0,0,0,0,0,0,0,0,0,0,0,
                                    34,42,14,10,7,11,121,4,78,14,335), ncol=6)
rownames(results_provinces_seats) <- c("Alberta","British Columbia","Manitoba","New Brunswick", "Newfoundland and Labrador","Nova Scotia","Ontario","Prince Edward Island","Quebec","Saskatchewan","Total electoral seats")
colnames(results_provinces_seats) <- c(" Liberal Party", " Conservative Party"," Bloc Quebecois","     NDP    "," Green Party"," Total Seats")
results.table.province.seats <- as.table(results_provinces_seats)
library(kableExtra)
results.table.province.seats %>%
  kbl() %>%
  kable_styling() %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))