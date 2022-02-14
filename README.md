# MechaCar_Statistical_Analysis-

## Overview
This purpose of this analysis is to study the MechaCar datas such as creating multiple linear regression analysis to identify which variables predict the mpg of MechaCar prototypes; running t-test to determine if the manufacturing lots are statistically different from the mean population

## Linear Regression to Predict MPG
<img width="548" alt="Screen Shot 2022-02-13 at 9 54 47 PM" src="https://user-images.githubusercontent.com/92563285/153808258-026f7eca-02e5-4dc4-998f-23c214d36aa8.png">

I created a multiple linear regression model to see which variables affect the MPG output. 

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The vehicle_length and ground_clearance variable provided a non-ranom amount of variance to the mpg values in the dataset since they have small P-values. 

#### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not equal to 0. From the linear regression model, we can see that the formula to predict the mpg is mpg=(-1.040e+02) + (6.267*vehicle_length) + (1.245e-3 * vehicle_weight) + (6.877e-02 * spoiler_angle) + (3.546 * ground_angle) + (-3.411 * AWD).

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r-squared value for this multiple linear regression model is 0.7149 which means that 71.49% of variability of our dependent variable is explained using this linear regression model. We consider that this model is effectively

## Sumary Statistics on Suspension Coils

### total_summary
<img width="335" alt="Screen Shot 2022-02-13 at 9 55 19 PM" src="https://user-images.githubusercontent.com/92563285/153808270-4f1819bc-e0a8-49c8-9da6-7cf953d124fa.png">
### lot_summary
<img width="493" alt="Screen Shot 2022-02-13 at 9 55 41 PM" src="https://user-images.githubusercontent.com/92563285/153808290-2d32f44f-6966-4475-ba68-821fb4af38b1.png">

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

By looking at the total_summary dataframe, the variance is 62.29356 which is meets the design specification. But for the lot_summary, we can see that the variance for lot3 is 170.2861224 which is exceeded the design specification 100PSI, so the company should use datas from lot1 and lot2. 

#### T-test on suspension coils

<img width="415" alt="Screen Shot 2022-02-13 at 9 56 05 PM" src="https://user-images.githubusercontent.com/92563285/153808303-bcce2072-a049-467a-99d5-2c90d9eadb28.png">
<img width="549" alt="Screen Shot 2022-02-13 at 9 56 24 PM" src="https://user-images.githubusercontent.com/92563285/153808306-26b1d3b7-3868-4a00-b92c-95c52db0897d.png">

#### for t-test that compares all manufacturing lots against mean PSI of the population:
H0: true mean is equal to 1500
Ha: true mean is not equal to 1500
The p-value for  the t-test that compares all manufacturing lots against mean PSI of the population is 0.06028 which is greater than the significance level of 95%. So we failed to reject the null hypothesis and we can state that the true mean is equal to 1500.

#### for three t-test that compare each manufacturing lot against mean PSI of the population:
H0: true mean for each lot is equal to 1500
Ha: true mean is not equal to 1500
We can see that the p-value for lot3 is 0.04168 which is less than our significance level of 95% so we reject the null hypothesis and we can state that the true mean for lot3 is not equal to 1500.

#### summary
The true mean for all lots, lot1 and lot2 is tested and we can state that they are equal to 1500. The true mean for lot3 is tested and we can state that the true mean for lot3 is not equal to 1500.

## Study Design: MechaCar vs Competition
#### what metric or metrics are you going to test?
I am going to test the horse power between MechaCar and the competiter's car

#### what is null hypothesis or alternative hypothesis
the null hypothesis is that their horsepower is the same.
the alternative hypothesis is that the horsepower is not the same

#### what statistical test would you use to test the hypothesis? and why?
I would use the two sample t-test or the pair t-test becuase I am comparing two samples means from two populations

#### What data is needed to run the statistical test?
I will need to select a sample size from the MechaCar data and the competiter company car data, then I will compare the horse power columns from these two dataset.
