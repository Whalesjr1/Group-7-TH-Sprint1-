#!/usr/bin/env python
# coding: utf-8

# In[ ]:


#Get User Input weight, height
weight= float(input("Enter weight (kg):"))
height= float(input("Enter height (m):"))
input = str(input("please enter Metric or Imperial"))


# In[ ]:


#How to Caculate BMI_METRIC
bmi_metric= weight / height **2


# In[ ]:


#How to Caculate BMI_IMPERIAL
bmi_imperial= (weight / height**2)*703


# In[ ]:


#Print Output
input == Metric
print ("Your BMI is"+ str(bmi_metric))
print ("Your BMI is", bmi_metric)
print ("Your BMI is % f" %bmi_metric


# In[ ]:


#Print Output
input == Imperial
print ("Your BMI is"+ str(bmi_imperial)) 
print ("Your BMI is", bmi_imperial)
print ("Your BMI is % f" %bmi_imperial


# In[ ]:


# Determine state of health
if bmi_metric <18.5:
    print ("Underweight")
elif bmi_metric <25:
    print ("Normal")
elif bmi_metric <30:
    print ("Overweight")
elif bmi_metric >=30:
    print ("Obese")


# In[ ]:


# Determine state of health
if bmi_imperial <18.5:
    print ("Underweight")
elif bmi_imperial <25:
    print ("Normal")
elif bmi_imperial <30:
    print ("Overweight")
elif bmi_imperial >=30:
    print ("Obese")


# In[ ]:




