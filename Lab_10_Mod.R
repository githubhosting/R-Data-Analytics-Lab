library(dplyr)
library(datasets)

data <- attitude
print(data)

filter_data <- filter(data, rating > 60)
print(filter_data)

arrange_data <- arrange(data, rating)
print(arrange_data)

select_data <- select(data, rating, complaints)
print(select_data)

mutate_data <- mutate(data, new_rating = rating * 2)
print(mutate_data)

summarise_data <- summarise(data, avg_rating = mean(rating))
print(summarise_data)

group_by_data <- group_by(data, learning)
summarise_data <- summarise(group_by_data, avg_rating = mean(rating))
print(summarise_data)



