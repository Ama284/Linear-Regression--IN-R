library(caTools)

# 1. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the city_temperature data frame.
# a. For this model, take Country, Region, City, and AvgTemperature as the
# independent variable and Month as the dependent variable.
# b. Check the Residual Standard Error and Multiple R-Squared Error.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)

sample.split(city_temperature$Month, SplitRatio = 0.7)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

lm(Month~Country+Region+City+AvgTemperature, data = train)->mod1
predict(mod1, newdata = test)->predicted_values1
cbind(Actual =test$Month, predicted=predicted_values1)->final_data1
View(final_data1)

class(final_data1)
as.data.frame(final_data1)->final_data1
class(final_data1)

final_data1$Actual-final_data1$predicted->error1
View(error1)
cbind(final_data1,error1)->final_data1
View(final_data1)

summary(mod1)


# 2. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the Placement_Data_Full_Class data frame.
# a. For this model, take degree_p, mba_p, and status as the independent variable
# and etest_p as dependent variable.
# b. Check the Residual Standard Error and Multiple R-Squared Error.
read.csv("E:/DATA ANALYST/Data Science/Placement_Data_Full_Class.csv")->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

sample.split(Placement_Data_Full_Class$etest_p,SplitRatio = 0.7)->split_tag2
subset(Placement_Data_Full_Class,split_tag2==T)->train
subset(Placement_Data_Full_Class,split_tag2==F)->test
nrow(train)
nrow(test)

lm(etest_p~degree_p+mba_p+status, data=train)->mod2
predict(mod2, newdata = test)->predicted_values2
cbind(Actual=test$etest_p, predicted=predicted_values2)->final_data2
View(final_data2)

class(final_data2)
as.data.frame(final_data2)->final_data2
class(final_data2)

final_data2$Actual-final_data2$predicted->error2
View(error2)
cbind(final_data2,error2)->final_data2
View(final_data2)

summary(mod2)


# 3. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the Pharmacovigilance_audit_Data data frame.
# a. For this model, take Issues, DrugId, and Gender as independent variable and
# Age as dependent variable.
# b. Check the Residual Standard Error and Multiple R-Squared Error.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$Age,SplitRatio = 0.7)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

lm(Age~Issues+DrugID+Gender, data = train)->mod3
predict(mod3, newdata = test)->predicted_values3
cbind(Actual= test$Age, predicted=predicted_values3)->final_data3
View(final_data3)

class(final_data3)
as.data.frame(final_data3)->final_data3
class(final_data3)

final_data3$Actual-final_data3$predicted->error3
View(error3)
cbind(final_data3,error3)->final_data3

summary(mod3)
