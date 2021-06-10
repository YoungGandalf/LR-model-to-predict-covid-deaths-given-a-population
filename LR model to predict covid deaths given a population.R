#Adam Hereth
#using a linear regression model to predict covid deaths in a given area

library(tidyverse)
library(readxl)

setwd("C:/Users/Adam/Desktop/Spring 2021/Data Science CMSC 462/files")
advertising = read_excel("CovidMortality.xlsx")

# Fit the linear regression model and assign it to "MyModel"
MyModel = lm(Deaths ~ Confirmed, data = advertising)
print(MyModel)
print(summary(MyModel))
predict(MyModel,newdata = data.frame(Confirmed = 90000))

# obtain CIs for multiple values of dist
# Now data is entered as a vector inside of a data frame
MyModel = lm(Deaths ~ Area, data = advertising)
print(MyModel)
print(summary(MyModel))
predict(MyModel, newdata = data.frame(Area = c(80000, 90000, 100000)))

