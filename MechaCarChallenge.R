library(dplyr)

Mecha_mpg <- read.csv('Resources/MechaCar_mpg.csv')

head(Mecha_mpg)

#Perform linear regression and pass in all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg)

#Determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg))

