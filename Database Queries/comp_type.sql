select 
	compulsion_type, 
	count(patient_id) as patient_count, 
	round(avg(ybocs_scorec),2) as avg_comp_score
from ocd_data
group by compulsion_type
order by 2 desc; 