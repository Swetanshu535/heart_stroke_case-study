# heart_stroke_case-study
the heart stroke case study contains dataset which is analysed using sql


🚨 Heart Stroke Case Study Analysis with SQL 🚨

I recently completed an insightful analysis of a heart stroke dataset that contains critical health details such as ID, gender, age, hypertension, heart disease, marital status, work type, residence type, average glucose level, smoking status, and stroke history.

Using SQL to analyze this data, I answered several key questions:

🔍 1. Smoking Habits – I retrieved each person's ID alongside their smoking status to better understand their health habits.

🔍 2. Gender and Age Insights – I examined the gender and age distribution across the dataset to identify any correlations.

🔍 3. Men in Private Work with Rural Residence – I filtered the data to display men who work in the private sector and live in rural areas.

🔍 4. Women Who Never Smoked and Are Married – I queried to show women who have never smoked and have a positive marital status.

🔍 5. High Glucose Levels & Smoking History – I analyzed men and women with high glucose levels who formerly smoked but have not experienced a stroke, which was critical for understanding potential risk factors.

🔍 6. Average Glucose Level for Women – Lastly, I calculated the total average glucose level for women, providing a deeper insight into glucose patterns across the female population.

For this analysis, I utilized essential SQL functions like SELECT, WHERE, AND, IN, ORDER BY, and LIMIT to efficiently explore and manipulate the data.

This project not only allowed me to dive deeper into health data but also sharpened my SQL skills, making data-driven insights easier to extract and interpret.

Create database heart_stroke;
use heart_stroke;

select * from heart_data;

-- Show the ID and their smoking_status
select ID,smoking_status
from heart_data;

-- Show the gender and age
select gender,age
from heart_data;

-- Display the man who have work type private and have their residence_type is rural
select Gender,work_type,residence_type
from heart_data
where gender="Male" and work_type="Private" and residence_type="Rural";

-- Show the women who have never smoked and the married status is positive
select Gender,Smoking_status,ever_married
from heart_data
where gender= "Female" and Smoking_status= "Never Smoked" and ever_married="Yes";

-- Display the man and woman who had high glucose level and formly smoked  but did not have a stroke 
select gender,avg_glucose_level,smoking_status,stroke
from heart_data
where smoking_status= "formerly smoked" and stroke=0
order by avg_glucose_level desc;

-- Show the total the avg glucose level for the women 
select sum(avg_glucose_level)
from heart_data
where gender="Female"

