select 
	ethnicity,
	count(patient_id) as patient_count,
	round(avg(ybocs_scoreo),2) as avg_obsess_by_ethnicity
from ocd_data
group by 1 
order by 2;

select  
extract('year' from ocd_diagnosis_date) as year,
extract('month' from ocd_diagnosis_date) as month, 
count(patient_id) as patient_count
from ocd_data 
group by 1,2
order by 1,2,3;  

select 
	obsession_type, 
	count(patient_id) as patient_count, 
	round(avg(ybocs_scoreo),2) as avg_obsess_score
from ocd_data
group by obsession_type
order by 2 desc; 