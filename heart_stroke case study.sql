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
