with gender_dis as 
(
select 
	gender, 
	count(patient_id) as patient_count, 
	round(avg(ybocs_scoreo),1) as avg_obsess_score 
from ocd_data 
group by 1
order by 2 desc
)
select 
	gender, 
	patient_count, 
	avg_obsess_score, 
	round(patient_count*100/(select sum(patient_count) from gender_dis),2) as gender_pct
from gender_dis;