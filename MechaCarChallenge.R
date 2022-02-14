################MechaCar####################
# use the library() function to load dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechaCar <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# perform linear regression using the lm() function
mechaCar_lm = lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechaCar)

# use the summary() function determine the p-value and the r squared value for the linear regression model
summary(mechaCar_lm)
# the p value for vehicle_length, ground_clearance is small
# the R squared value is 0.7149 which means that 71.49% of the the variability of our dependent variable is explained using this linear model

##################Suspension_Coil##############
# import and read in the data
suspensionCoil = read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create total_summary dataframe to get the mean, median, variance and standard deviation of the PSI column
total_summary = suspensionCoil%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

# lot_summary
lot_summary = suspensionCoil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

############T-test#############
# use t.test() to determine if the PSI across all manufacturing lots is statistically different from the pop mean of 1500PSI
t.test(suspensionCoil$PSI, mu=1500)

# write three more t.test() and subset() argument to determine if the PSI for each manufacturing lot is statistically different from the pop mean of 1500PSI
t.test(subset(suspensionCoil,Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(suspensionCoil,Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(suspensionCoil,Manufacturing_Lot=='Lot3')$PSI, mu=1500)
