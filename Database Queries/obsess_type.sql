select 
	obsession_type, 
	count(patient_id) as patient_count, 
	round(avg(ybocs_scoreo),2) as avg_obsess_score
from ocd_data
group by obsession_type
order by 2 desc; 