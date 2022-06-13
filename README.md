# MechaCar_Statistical_Analysis

<h1>Project Overview</h1>
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team. 

<h1>Resources</h1>

- Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv

- Software: RStudio

- Dependencies: dplur

In this challenge, I helped Jeremy and the data analytics team do the following:
<ul>
<li>Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes</li>

<li>Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots</li>

<li>Run t-tests to determine if the manufacturing lots are statistically different from the mean population</li>

<li>Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.</li>
</ul>

Deliverable 1:
## Linear Regression to Predict MPG
<p>The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Then, you’ll write a short interpretation of the multiple linear regression results in the README.md.</p>

<img src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%201%20%20step%205.png">

<b>1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b>
The <b>vehicle_length</b> and the <b>ground_clearance</b> both provide a non-random amount of variance to the mpg value. 
<ul>
  <li>vehicle_length has a p-value of 2.60e-12</li>
  <li>ground_clearance has a p-value of 5.21e-08</li>
</ul>

<b>Is the slope of the linear model considered to be zero? Why or why not?</b>
With an overal p-value: 5.35e-11 which is much less than 0.05% or the assumed significance and this tells us that the slope of the linear model would not be considered zero.

<b>Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>
The R-squared value is 0.7149 and this would tell us that about 71% of the mpg predictions will be effectivly determined by this model.
<img" ">

Deliverable 2:
## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:
<ul>
  <li>The suspension coil’s PSI continuous variable across all manufacturing lots</li>
  <li>The following PSI metrics for each lot: mean, median, variance, and standard deviation.</li>
  </ul>
<img src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%202%20Step%203.png">

<b>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?</b>

The data as a whole shows a variance of 62.29356, clearly showing that the PSI is under 100 pounds per squar inch. However, the per lot breakdown shows that Lot1 has a variance of 0.980 and Lot2 has a variance of 7.47. This confirms that they are withing the variance limit. Then Lot3 shows a much larger variance number at 170, this shows a dramatic difference from the first two lots we reviewed. 

Deliverable 3:
## T-Tests on Suspension Coils
<p>Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.</p>

<b>Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.</b>

We used t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Here we can see a true mean of 1498.78 and p-value = 1. Though this is higher than the common significance level of 0.05, we do not have enough evedance to support rejecting the null hypothesis. 

We then confrimed that there is not statistical difference between Lot1 and Lot2 with a mean of 1500 and 1500.2. Then Lot3 does show a statistical difference with a mean of 1496.14 verses the population mean of 1500 PSI.
<image src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%203%20Step%201.png">

<image src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%203%20Step%202a.png">

<image src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%203%20Step%202b.png">

<image src="https://github.com/kellynichols99/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%203%20Step%202c.png">

Deliverable 4:
## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

I would like to have additioanl data from compairable manufacturers and vehicals to review with the MechaCar data. Being able to review the MPG with this additional information would help MechaCar to make desisions in the future of what designes or styles to implement or avoid in the manufactuing process.
<br>
<b>Metrics</b>
* Miles Per Gallon
* Fuel type
* Vehicle Weight
<br>
<b>Hypothesis</b>
MechaCar is able to provide a compairable fuel economy to other vehicles of a simular weight and fuel type.
<br>
<b>Statistical testing</b>
A multiple linear regression should be used to determine the metrics that have the most significant correlation and predictability with the best fuel efficiency.
<br>
<b>Resources</b>
Data: CSV files that have compairable data to what we already have for MechaCar
Programs/Software: RStudio
