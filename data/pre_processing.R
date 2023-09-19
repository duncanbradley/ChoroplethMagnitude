library(tidyverse)

database <- read_csv('database.csv')

# adding list_no column 
database <- database %>%
  filter(item_no == 1) %>%
  mutate(list_no = case_when((scale == "trunc" & label == "label") ~ "list1",
                             (scale == "trunc" & label == "blank") ~ "list2",
                             (scale == "extend" & label == "label") ~ "list3",
                             (scale == "extend" & label == "blank") ~ "list4")) %>%
  select(participant, 
         list_no) %>%
  inner_join(database, by = "participant") 

# anonymisation
keys <- unique(database$participant)
vals <- seq(1, length(unique(database$participant)))
database$participant <- vals[ match(database$participant, keys) ]

# add correct, no_correct, outcome columns
# for assessing attention check responses
database <- database %>%
  mutate(AC_correct = case_when((item_no > 48) & (correct_option == slider.response) ~ TRUE,
                                (item_no > 48) & (correct_option != slider.response) ~ FALSE)) %>%
  group_by(participant) %>%
  mutate(AC_no_correct = sum(AC_correct, na.rm = TRUE)) %>%
  mutate(AC_outcome = AC_no_correct < 5) %>%
  mutate(across(AC_outcome, as_factor)) %>%
  mutate(AC_outcome = recode(AC_outcome, 'TRUE' = "FAIL", 'FALSE' = "PASS")) 

# write_csv
write_csv(database, "anon1_database.csv")

# exporting .csv of all participant IDs from those who returned data
database %>% select(participant) %>% unique() %>%
  write_csv("approve.csv")
# 167 paid on prolific, 165 present in dataset 
# (2 failed due to technical issues with PsychoPy)

# ------------------------------------
# distribution of correct responses
database %>% 
  count(AC_no_correct) %>%
  ggplot(aes(x = AC_no_correct)) +
  geom_bar() +
  geom_vline(xintercept = 4.5) +
  labs(x = "Number of Correct Answers",
       y = "Count") +
  annotate("rect", xmin = 0, xmax = 4.5, ymin = 0, ymax = Inf,
           alpha = .2) +
  annotate("text", x = 2, y = 85,
           label = "FAIL") +
  annotate("text", x = 5.5, y = 85,
           label = "PASS") +
  theme_minimal()

# check balance for those who passed
database %>%
  filter(AC_outcome == "PASS") %>%
  group_by(participant, list_no) %>%
  count() %>%
  group_by(list_no) %>%
  count()



