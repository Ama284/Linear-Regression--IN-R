library(caTools)

# 1. After building the multi linear model on top of the train set for the city_temperature
# data frame, and finding the prediction values of the multimodel1 on top of the test
# dataset.
# a. Now combine the error that you have calculated while predicting the values to
# the Result1 data frame.
# b. With the help of the error, find the RMSE value of that model.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)

sample.split(city_temperature$Month,SplitRatio = 0.65)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

lm(Month ~ Country+Region+City+AvgTemperature, data = train)->mod1
predict(mod1,newdata = test)->predicted_values1
cbind(Actual =test$Month, predicted=predicted_values1)->MultiModel1
View(MultiModel1)

class(MultiModel1)
as.data.frame(MultiModel1)->MultiModel1
class(MultiModel1)
MultiModel1$Actual-MultiModel1$predicted->error1
View(error1)
cbind(MultiModel1,error1)->MultiModel1
View(MultiModel1)

sqrt(mean((MultiModel1$error1)^2))->rmse1
rmse1

 
# 2. After building the multi linear model on top of the train set for the
# Placement_Data_Full_Class data frame, and finding the prediction values of the
# multimodel2 on top of the test dataset.
# a. Now combine the error that you have calculated while predicting the values to
# the Result2 data frame.
# b. With the help of the error, find the RMSE value of that model.
read.csv("E:/DATA ANALYST/Data Science/Placement_Data_Full_Class.csv")->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

sample.split(Placement_Data_Full_Class$etest_p,SplitRatio = 0.65)->split_tag2
subset(Placement_Data_Full_Class,split_tag2==T)->train
subset(Placement_Data_Full_Class,split_tag2==F)->test
nrow(train)
nrow(test)

lm(etest_p ~ degree_p+mba_p+status, data = train)->mod2
predict(mod2,newdata = test)->predicted_values2
cbind(Actual =test$etest_p, predicted=predicted_values2)->MultiModel2
View(MultiModel2)

class(MultiModel2)
as.data.frame(MultiModel2)->MultiModel2
class(MultiModel2)

MultiModel2$Actual-MultiModel2$predicted->error2
View(error2)
cbind(MultiModel2,error2)->MultiModel2
View(MultiModel2)

sqrt(mean((MultiModel2$error2)^2))->rmse2
rmse2


# 3. After building the multi linear model on top of the train set for the
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the
# multimodel3 on top of the test dataset.
# a. Now combine the error that you have calculated while predicting the values to
# the Result3 data frame.
# b. With the help of the error, find the RMSE value of that model.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$Age,SplitRatio = 0.65)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

lm(Age ~ Issues+Gender,data = train)->mod3
predict(mod3, newdata = test)->predicted_values3
cbind(Actual =test$Age, predicted=predicted_values3)->MultiModel3
View(MultiModel3)

class(MultiModel3)
as.data.frame(MultiModel3)->MultiModel3
class(MultiModel3)

MultiModel3$Actual-MultiModel3$predicted->error3
View(error3)
cbind(MultiModel3,error3)->MultiModel3

sqrt(mean((MultiModel3$error3)^2))->rmse3
rmse3
