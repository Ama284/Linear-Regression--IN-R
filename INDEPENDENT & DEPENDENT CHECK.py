#!/usr/bin/env python
# coding: utf-8

# # INDEPENDENT & DEPENDENT CHECK

# In[ ]:


#1. Load the city_temperature dataset using pandas package.
#a. Find out the independent and dependent features from the data frame for model training.


# In[12]:


import pandas as pd
df = pd.read_csv('E:/DATA ANALYST/Data Science/city_temperature.csv')
print(df)
X = df.iloc[:, :-1].values  #INDEPENDENT CHECK
print(X)
Y = df.iloc[:, -1].values  # DEPENDENT CHECK
print(Y)


# In[1]:


#2. Load the Placement_Data_Full_Class dataset using pandas package
#a. Find out the independent and dependent features from the data frame for model training.


# In[13]:


import pandas as pd
df = pd.read_csv("E:/DATA ANALYST/Data Science/Placement_Data_Full_Class.csv")
print(df)
a = df.iloc[:, :-1].values  #INDEPENDENT CHECK
print(a)
b = df.iloc[:, -1].values  # DEPENDENT CHECK
print(b)


# In[14]:


#3. Load the Pharmacovigilance_audit_Data using the pandas package.
#a. Find out the independent and dependent features from the data frame for the model training.


# In[15]:


import pandas as pd
df = pd.read_csv('E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv')
print(df)
c = df.iloc[:, :-1].values  #INDEPENDENT CHECK
print(c)
d = df.iloc[:, -1].values  # DEPENDENT CHECK
print(d)


# In[ ]:




