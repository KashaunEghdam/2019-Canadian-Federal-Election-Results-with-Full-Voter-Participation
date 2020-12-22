#### Preamble ####
# Purpose: to display how table 2 was calculated

cell_counts_1 <- cell_counts %>%filter(province %in% c("Alberta"))
cell_counts_2 <- cell_counts %>%filter(province %in% c("British Columbia"))
cell_counts_3 <- cell_counts %>%filter(province %in% c("Manitoba"))
cell_counts_4 <- cell_counts %>%filter(province %in% c("New Brunswick"))
cell_counts_5 <- cell_counts %>%filter(province %in% c("Newfoundland and Labrador"))
cell_counts_6 <- cell_counts %>%filter(province %in% c("Nova Scotia"))
cell_counts_7 <- cell_counts %>%filter(province %in% c("Ontario"))
cell_counts_8 <- cell_counts %>%filter(province %in% c("Prince Edward Island"))
cell_counts_9 <- cell_counts %>%filter(province %in% c("Quebec"))
cell_counts_10 <- cell_counts %>%filter(province %in% c("Saskatchewan"))

Liberal_popular_vote <- cell_counts %>% 
  filter(vote_2019 %in% c(".Liberal Party"))
Liberal_popular_vote_percent <- sum(Liberal_popular_vote$proportion) * 100

Conservative_popular_vote <- cell_counts %>% 
  filter(vote_2019 %in% c("Conservative Party"))
Conservative_popular_vote_percent <- sum(Conservative_popular_vote$proportion) * 100

NDP_popular_vote <- cell_counts %>% 
  filter(vote_2019 %in% c("NDP"))
NDP_popular_vote_percent <- sum(NDP_popular_vote$proportion) * 100

Bloc_Quebecois_popular_vote <- cell_counts %>% 
  filter(vote_2019 %in% c("Bloc Quebecois"))
Bloc_Quebecois_popular_vote_percent <- sum(Bloc_Quebecois_popular_vote$proportion) * 100

Green_popular_vote <- cell_counts %>% 
  filter(vote_2019 %in% c("Green Party"))
Green_popular_vote_percent <- sum(Green_popular_vote$proportion) * 100

L_pv_1 <- cell_counts_1 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_11 <- 100*(sum(L_pv_1$n))/(sum(cell_counts_1$n))
C_pv_1 <- cell_counts_1 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_11 <- 100*sum(C_pv_1$n)/sum(cell_counts_1$n)
N_pv_1 <- cell_counts_1 %>% filter(vote_2019 %in% c("NDP"))
N_pv_11 <- 100*sum(N_pv_1$n)/sum(cell_counts_1$n)
B_pv_1 <- cell_counts_1 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_11 <- 100*sum(B_pv_1$n)/sum(cell_counts_1$n)
G_pv_1 <- cell_counts_1 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_11 <- 100*sum(G_pv_1$n)/sum(cell_counts_1$n)

L_pv_2 <- cell_counts_2 %>% filter(vote_2019 %in% c(".Liberal Party"))
L_pv_21 <- 100*sum(L_pv_2$n)/sum(cell_counts_2$n)
C_pv_2 <- cell_counts_2 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_21 <- 100*sum(C_pv_2$n)/sum(cell_counts_2$n)
N_pv_2 <- cell_counts_2 %>% filter(vote_2019 %in% c("NDP"))
N_pv_21 <- 100*sum(N_pv_2$n)/sum(cell_counts_2$n)
B_pv_2 <- cell_counts_2 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_21 <- 100*sum(B_pv_2$n)/sum(cell_counts_2$n)
G_pv_2 <- cell_counts_2 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_21 <- 100*sum(G_pv_2$n)/sum(cell_counts_2$n)

L_pv_3 <- cell_counts_3 %>% filter(vote_2019 %in% c(".Liberal Party"))
L_pv_31 <- 100*sum(L_pv_3$n)/sum(cell_counts_3$n)
C_pv_3 <- cell_counts_3 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_31 <- 100*sum(C_pv_3$n)/sum(cell_counts_3$n)
N_pv_3 <- cell_counts_3 %>% filter(vote_2019 %in% c("NDP"))
N_pv_31 <- 100*sum(N_pv_3$n)/sum(cell_counts_3$n)
B_pv_3 <- cell_counts_3 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_31 <- 100*sum(B_pv_3$n)/sum(cell_counts_3$n)
G_pv_3 <- cell_counts_3 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_31 <- 100*sum(G_pv_3$n)/sum(cell_counts_3$n)

L_pv_4 <- cell_counts_4 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_41 <- 100*sum(L_pv_4$n)/sum(cell_counts_4$n)
C_pv_4 <- cell_counts_4 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_41 <- 100*sum(C_pv_4$n)/sum(cell_counts_4$n)
N_pv_4 <- cell_counts_4 %>% filter(vote_2019 %in% c("NDP"))
N_pv_41 <- 100*sum(N_pv_4$n)/sum(cell_counts_4$n)
B_pv_4 <- cell_counts_4 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_41 <- 100*sum(B_pv_4$n)/sum(cell_counts_4$n)
G_pv_4 <- cell_counts_4 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_41 <- 100*sum(G_pv_4$n)/sum(cell_counts_4$n)

L_pv_5 <- cell_counts_5 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_51 <- 100*sum(L_pv_5$n)/sum(cell_counts_5$n)
C_pv_5 <- cell_counts_5 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_51 <- 100*sum(C_pv_5$n)/sum(cell_counts_5$n)
N_pv_5 <- cell_counts_5 %>% filter(vote_2019 %in% c("NDP"))
N_pv_51 <- 100*sum(N_pv_5$n)/sum(cell_counts_5$n)
B_pv_5 <- cell_counts_5 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_51 <- 100*sum(B_pv_5$n)/sum(cell_counts_5$n)
G_pv_5 <- cell_counts_5 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_51 <- 100*sum(G_pv_5$n)/sum(cell_counts_5$n)

L_pv_6 <- cell_counts_6 %>% filter(vote_2019 %in% c(".Liberal Party"))
L_pv_61 <- 100*sum(L_pv_6$n)/sum(cell_counts_6$n)
C_pv_6 <- cell_counts_6 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_61 <- 100*sum(C_pv_6$n)/sum(cell_counts_6$n)
N_pv_6 <- cell_counts_6 %>% filter(vote_2019 %in% c("NDP"))
N_pv_61 <- 100*sum(N_pv_6$n)/sum(cell_counts_6$n)
B_pv_6 <- cell_counts_6 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_61 <- 100*sum(B_pv_6$n)/sum(cell_counts_6$n)
G_pv_6 <- cell_counts_6 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_61 <- 100*sum(G_pv_6$n)/sum(cell_counts_6$n)

L_pv_7 <- cell_counts_7 %>% filter(vote_2019 %in% c(".Liberal Party"))
L_pv_71 <- 100*sum(L_pv_7$n)/sum(cell_counts_7$n)
C_pv_7 <- cell_counts_7 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_71 <- 100*sum(C_pv_7$n)/sum(cell_counts_7$n)
N_pv_7 <- cell_counts_7 %>% filter(vote_2019 %in% c("NDP"))
N_pv_71 <- 100*sum(N_pv_7$n)/sum(cell_counts_7$n)
B_pv_7 <- cell_counts_7 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_71 <- 100*sum(B_pv_7$n)/sum(cell_counts_7$n)
G_pv_7 <- cell_counts_7 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_71 <- 100*sum(G_pv_7$n)/sum(cell_counts_7$n)

L_pv_8 <- cell_counts_8 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_81 <- 100*sum(L_pv_8$n)/sum(cell_counts_8$n)
C_pv_8 <- cell_counts_8 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_81 <- 100*sum(C_pv_8$n)/sum(cell_counts_8$n)
N_pv_8 <- cell_counts_8 %>% filter(vote_2019 %in% c("NDP"))
N_pv_81 <- 100*sum(N_pv_8$n)/sum(cell_counts_8$n)
B_pv_8 <- cell_counts_8 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_81 <- 100*sum(B_pv_8$n)/sum(cell_counts_8$n)
G_pv_8 <- cell_counts_8 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_81 <- 100*sum(G_pv_8$n)/sum(cell_counts_8$n)

L_pv_9 <- cell_counts_9 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_91 <- 100*sum(L_pv_9$n)/sum(cell_counts_9$n)
C_pv_9 <- cell_counts_9 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_91 <- 100*sum(C_pv_9$n)/sum(cell_counts_9$n)
N_pv_9 <- cell_counts_9 %>% filter(vote_2019 %in% c("NDP"))
N_pv_91 <- 100*sum(N_pv_9$n)/sum(cell_counts_9$n)
B_pv_9 <- cell_counts_9 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_91 <- 100*sum(B_pv_9$n)/sum(cell_counts_9$n)
G_pv_9 <- cell_counts_9 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_91 <- 100*sum(G_pv_9$n)/sum(cell_counts_9$n)

L_pv_10 <- cell_counts_10 %>% filter(vote_2019 %in% c(".Liberal Party")) 
L_pv_101 <- 100*sum(L_pv_10$n)/sum(cell_counts_10$n)
C_pv_10 <- cell_counts_10 %>% filter(vote_2019 %in% c("Conservative Party"))
C_pv_101 <- 100*sum(C_pv_10$n)/sum(cell_counts_10$n)
N_pv_10 <- cell_counts_10 %>% filter(vote_2019 %in% c("NDP"))
N_pv_101 <- 100*sum(N_pv_10$n)/sum(cell_counts_10$n)
B_pv_10 <- cell_counts_10 %>% filter(vote_2019 %in% c("Bloc Quebecois"))
B_pv_101 <- 100*sum(B_pv_10$n)/sum(cell_counts_10$n)
G_pv_10 <- cell_counts_10 %>% filter(vote_2019 %in% c("Green Party"))
G_pv_101 <- 100*sum(G_pv_10$n)/sum(cell_counts_10$n)

# Modify global options
options(digits = 1) 

results_provinces <- matrix(c(
  L_pv_11,L_pv_21,L_pv_31,L_pv_41,L_pv_51,L_pv_61,L_pv_71,L_pv_81,L_pv_91,L_pv_101,Liberal_popular_vote_percent,
  C_pv_11,C_pv_21,C_pv_31,C_pv_41,C_pv_51,C_pv_61,C_pv_71,C_pv_81,C_pv_91,C_pv_101,Conservative_popular_vote_percent,
  B_pv_11,B_pv_21,B_pv_31,B_pv_41,B_pv_51,B_pv_61,B_pv_71,B_pv_81,B_pv_91,B_pv_101,NDP_popular_vote_percent,
  N_pv_11,N_pv_21,N_pv_31,N_pv_41,N_pv_51,N_pv_61,N_pv_71,N_pv_81,N_pv_91,N_pv_101,Bloc_Quebecois_popular_vote_percent,
  G_pv_11,G_pv_21,G_pv_31,G_pv_41,G_pv_51,G_pv_61,G_pv_71,G_pv_81,G_pv_91,G_pv_101,Green_popular_vote_percent), ncol=5)
rownames(results_provinces) <- c("Alberta","British Columbia","Manitoba","New Brunswick", "Newfoundland and Labrador","Nova Scotia","Ontario","Prince Edward Island","Quebec","Saskatchewan","Total Popular Vote")
colnames(results_provinces) <- c(" Liberal Party", " Conservative Party"," Bloc Quebecois","     NDP    "," Green Party")
results.table.province <- as.table(results_provinces)
results.table.province %>%
  kbl() %>%
  kable_styling() %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))