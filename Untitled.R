library(tidyverse)
t <- tibble(value = c(4,6,7,".", ".", 1, 1, 4, ".", "."),
			 number_id = c(1,1,1,2,2,3,3,3,4,4))
# create a new column, full_value, which, for each number_id, pastes together all the values in the value column for that number_id
t %>%
	group_by(number_id) %>%
	mutate(full_value = paste(value, collapse = ""))