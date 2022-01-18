######################
# CREATE PIVOT TABLE #
######################
library(reshape2)
library(dplyr)

# import data
df <- read.csv("aggregated_df.csv")

# create pivot table
df_pivot <- df %>% dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

# write csv
write.csv(df_pivot, "pivot_table.csv")