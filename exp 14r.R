data(ChickWeight)

# Display dataset
ChickWeight

# First few rows
head(ChickWeight)

# Summary
summary(ChickWeight)

# Sort by weight
sorted_data <- ChickWeight[
  order(ChickWeight$weight),
]

print(sorted_data)

# Load reshape2
library(reshape2)

# Melt dataset
melted_data <- melt(
  ChickWeight,
  id.vars = c("Chick", "Time", "Diet"),
  measure.vars = "weight"
)

print(melted_data)

# Cast by Diet
cast_data <- dcast(
  ChickWeight,
  Diet ~ Time,
  value.var = "weight",
  fun.aggregate = mean
)

print(cast_data)