DROP MATERIALIZED VIEW IF EXISTS mortality CASCADE;
CREATE MATERIALIZED VIEW mortality AS

SELECT 
   pts.subject_id
  ,adm.admittime
  ,adm.hospital_expire_flag
  ,adm.deathtime
  ,pts.dod
  -- -- dod_hosp and dod_ssn were merged into dod
  -- ,pts.dod_hosp 
  -- ,pts.dod_ssn
  ,
  AS duration_pct
FROM cohort cht
RIGHT JOIN patients pts
ON pts.subject_id = cht.subject_id
RIGHT JOIN admissions adm
ON adm.hadm_id = cht.hadm_id
