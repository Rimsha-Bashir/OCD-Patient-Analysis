select 
	ethnicity,
	count(patient_id) as patient_count,
	round(avg(ybocs_scoreo),2) as avg_obsess_by_ethnicity
from ocd_data
group by 1 
order by 2;

select  
date_part('month', ocd_diagnosis_date) as month_number, 
count(patient_id) as patient_count
from ocd_data 
group by 1
order by 1;  