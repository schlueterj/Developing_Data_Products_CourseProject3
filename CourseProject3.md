
Deveoping Data Products Course Project 3
========================================================
author: J. Schlueter
date:  August 4, 2020
autosize: true

Overview
========================================================

This is the second part of Course Project 3 from the Developing Data Product course on Coursera. The aim is to pitch the shiny app, designed in the first part of this peer assignment.

The shiny app can be found here:
<https://schlueterj.shinyapps.io/myapp/>

The application uses the `diamond` data set from the `UsingR` package and fits a linear regression model to the data to predict the diamond price from weight.

Diamond Data Set
========================================================
The `diamond` data set contains 48 observations of 2 variables (*carat* and *price* in Singapore dollars)


```r
library(UsingR)
head(diamond, 5)
```

```
  carat price
1  0.17   355
2  0.16   328
3  0.17   350
4  0.18   325
5  0.25   642
```


Server calculation
========================================================
left: 60%
![](ServerCalculation.png)
***
<small>This is the app's server.R file.

- A linear regression model is fitted and the data and the fitted regression line are plotted. 
- The user can select a carat value via a slider and the app calculates the predicted price based on the regression. </small>

How the Application looks like
========================================================
![](myApp.png)
