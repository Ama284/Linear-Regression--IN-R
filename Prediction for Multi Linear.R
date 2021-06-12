library(caTools)

# 1. After building a multi linear model on top of the train set for the city_temperature
# data frame, now find the prediction values of the model1 on top of the test dataset.
# a. Now combine the actual values and predicted values of the model and store
# that combined data in a new data frame named ‘MultiResult1’.
# b. Find out the errors in the predicted values.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)

sample.split(city_temperature$Month,SplitRatio = 0.7)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

lm(Month ~ Country+Region+City+AvgTemperature,data = train)->mod1
predict(mod1, newdata = test)->predicted_values
cbind(Actual=test$Month, predicted=predicted_values)->MultiResult1
View(MultiResult1)

class(MultiResult1)
as.data.frame(MultiResult1)->MultiResult1
class(MultiResult1)

MultiResult1$Actual-MultiResult1$predicted->error1
View(error1)
cbind(MultiResult1,error1)->MultiResult1
View(MultiResult1)


# 2. After building a multi linear model on top of the train set for the
# Placement_Data_Full_Class data frame, now find the prediction values of the model2
# on top of the test dataset.
# a. Now combine the actual values and predicted values of the model and store
# that combined data in a new data frame named ‘MultiResult2’.
# b. Find out the errors in the predicted values.
read.csv("E:/DATA ANALYST/Data Science/Placement_Data_Full_Class.csv")->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

sample.split(Placement_Data_Full_Class$etest_p,SplitRatio = 0.7)->split_tag2
subset(Placement_Data_Full_Class,split_tag2==T)->train
subset(Placement_Data_Full_Class,split_tag2==F)->test
nrow(train)
nrow(test)

lm(etest_p ~ degree_p+mba_p+status, data = train)->mod2
predict(mod2,newdata = test)->predicted_values2
cbind(Actual=test$etest_p,predicted=predicted_values2)->MultiResult2
View(MultiResult2)

class(MultiResult2)
as.data.frame(MultiResult2)
class(MultiResult2)

MultiResult2$Actual-MultiResult2$predicted->error2
View(error2)
cbind(MultiResult2,error2)->MultiResult2
View(MultiResult2)


# 3. After building a multi linear model on top of the train set for the
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the
# model3 on top of the test dataset.
# a. Now combine the actual values and predicted values of the model and store
# that combined data in a new data frame named ‘MultiResult3’.
# b. Find out the errors in the predicted values.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$Age,SplitRatio = 0.65)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

lm(Age ~ Issues+Gender, data = train)->mod3
predict(mod3, newdata = test)->predicted_values3
cbind(Actual=test$Age,predicted=predicted_values3)->MultiResult3
View(MultiResult3)

class(MultiResult3)
as.data.frame(MultiResult3)->MultiResult3
class(MultiResult3)

MultiResult3$Actual-MultiResult3$predicted->error3
View(error3)
cbind(MultiResult3,error3)->MultiResult3
View(MultiResult3)
