-- NOTEEVENTS
-- CATEGORY        DESCRIPTION
-- "Physician "    "ICU Event Note- AMA"	
-- ... ...
-- "General"       "Comfort Measures Only"
-- "General"       "Comfort measures only"
-- ... ... 
-- "Physician "    "Code Blue, Cardiac Arrest, Death"
-- "General"       "Code Discussion"
-- "General"       "Code Note"
-- "General"       "Code discussion"
-- ... ...
-- "Physician "    "cardioversion"	
-- ... ...
-- "Physician "    "ICU Event Note - Cardiac Arrest"	
-- ... ...
-- "General"       "Death  Note"
-- "General"       "Death Certificate"
-- "General"       "Death Note"
-- "General"       "Death note"
-- "General"       "Death note/Event note"
-- "General"       "ICU Event Note death"	
-- "General"       "ICU Event Note -- death note"	
-- "General"       "ICU Event Note - Death Note"	
-- ... ...
-- "Nursing"       "ICU Event Note"	
-- ... ...
-- "Physician "    "Pronouncement of Death"	
-- "Physician "    "ICU Event Note- Death Note"
-- "Physician "    "ICU Event Note - Death"	
-- "Physician "    "ICU Event and Death NOte"
-- ... ...
-- "Physician "    "Critical Care Attending - Brain Death Note"


DROP MATERIALIZED VIEW IF EXISTS mortality CASCADE;
CREATE MATERIALIZED VIEW mortality AS

SELECT 
   pts.subject_id
  ,adm.admittime
  ,adm.hospital_expire_flag
  ,adm.deathtime
  ,pts.dod
  -- -- dod_hosp and dod_ssn were merged into dod
  -- ,min(pts.dod_hosp, pts.dod_ssn)
  ,
  AS duration_pct
FROM cohort cht
RIGHT JOIN patients pts
ON pts.subject_id = cht.subject_id
RIGHT JOIN admissions adm
ON adm.hadm_id = cht.hadm_id
