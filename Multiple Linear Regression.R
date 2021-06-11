library(caTools)

# 1. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the city_temperature data frame.
# a. For this model, take Country, Region, City, and AvgTemperature as the
# independent variable and Month as the dependent variable.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)
sample.split(city_temperature$Month,SplitRatio = 0.65)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

lm(Month ~ Country+Region+City+AvgTemperature,data = train)->mod1 #before tielda sign the data is dependent and after that independent 
predict(mod1, newdata = test)->predicted_values
cbind(Actual=test$Month,Predicted=predicted_values)->final_data
View(final_data)



# 2. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the Placement_Data_Full_Class data frame.
# a. For this model, take degree_p, mba_p, and status as the independent variable
# and etest_p as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/Placement_Data_Full_Class.csv")->Placement_Data_Full_Class
View(Placement_Data_Full_Class)

sample.split(Placement_Data_Full_Class$etest_p,SplitRatio = 0.65)->split_tag2
subset(Placement_Data_Full_Class,split_tag2==T)->train
subset(Placement_Data_Full_Class,split_tag2==F)->test
nrow(train)
nrow(test)

lm(etest_p ~ degree_p+mba_p+status, data = train)->mod2
predict(mod2,newdata = test)->predicted_values1
cbind(Actual=test$etest_p, Predicted =predicted_values1)->final_data2
View(final_data2)



# 3. After splitting the data frame into train and test sets, build a simple linear model on
# top of the train set for the Pharmacovigilance_audit_Data data frame.
# a. For this model, take Issues, DrugId, and Gender as independent variable and
# Age as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$Gender,SplitRatio = 0.65)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

lm(Age ~ Issues+DrugID+Gender,data = train)->mod3
predict(mod3,newdata = test)->predicted_values2
cbind(Actual=test$Age, Predicted= predicted_values2)->final_data4
View(final_data4)

