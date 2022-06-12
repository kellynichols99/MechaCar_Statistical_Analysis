library(dplyr)

#Download the MechaCar_mpg.csv
Mecha_mpg <- read.csv('Resources/MechaCar_mpg.csv')

head(Mecha_mpg)

#Deliverable 1

#Perform linear regression and pass in all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg)

#Determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg))

#Deliverable 2
#Download the Suspension_Coil.csv
susp_coil <- read.csv('Resources/Suspension_Coil.csv')

head(susp_coil)

#Create a Total Summary DataFrame with summarize
total_summary <- susp_coil%>% summarize (Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups ='keep')

head(total_summary)

#Create a Lot Summary dataframe with group_by and summarize
lot_summary <- susp_coil %>% group_by (Manufacturing_Lot) %>% summarize(Mean = mean(PSI) ,Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

head(lot_summary)