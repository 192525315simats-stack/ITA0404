data(iris)

# Display dataset
iris

# Dimensions
dim(iris)

# Summary
summary(iris)

# Standard deviation
sd(iris$Sepal.Length)
sd(iris$Sepal.Width)
sd(iris$Petal.Length)
sd(iris$Petal.Width)

# Quantiles
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Width)
quantile(iris$Petal.Length)
quantile(iris$Petal.Width)

# Group by Species
aggregate(
  Sepal.Length ~ Species,
  data = iris,
  FUN = mean
)

# Pivot table / group summary
aggregate(
  cbind(
    Sepal.Length,
    Sepal.Width,
    Petal.Length,
    Petal.Width
  ) ~ Species,
  data = iris,
  FUN = mean
)

# Create Sepal Length categories
iris$Sepal_Length_Category <- cut(
  iris$Sepal.Length,
  breaks = c(0, 5, 6, 7, Inf),
  labels = c(
    "Short",
    "Medium",
    "Long",
    "Very Long"
  )
)

# Display categories
head(iris)

# Count each category
table(iris$Sepal_Length_Category)

# Group by Species and category
table(
  iris$Species,
  iris$Sepal_Length_Category
)