library(reshape2)

data(airquality)

# Display dataset
head(airquality)

# Convert Month to month names
airquality$Month <- factor(
  airquality$Month,
  levels = 5:9,
  labels = c("May", "June", "July", "August", "September")
)

# Melt
air_melt <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp")
)

print(air_melt)

# Cast and calculate monthly averages
air_cast <- dcast(
  air_melt,
  Month ~ variable,
  fun.aggregate = mean,
  na.rm = TRUE
)

print(air_cast)