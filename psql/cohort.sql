-- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4729656/
-- -- These administrative codes for ischemic and hemorrhagic stroke have been previously validated as having a sensitivity and specificity of 85% or higher
-- -- -- Ischemic stroke was defined as a hospitalization with ICD-9-CM codes 433.x1, 434.x1, or 436 in any discharge diagnosis position without a primary discharge code for rehabilitation (V57) or an accompanying diagnosis of trauma (ICD-9-CM 800–804 or 850–854) or ICH (ICD-9-CM 431) or subarachnoid hemorrhage (ICD-9-CM 430) in any diagnostic position.
-- -- -- ICH was defined using ICD-9-CM code 431 in any discharge position without concomitant codes for rehabilitation (V57) in the primary diagnosis position or trauma (ICD-9-CM 800–804 or 850–854) in any position. 


DROP MATERIALIZED VIEW IF EXISTS cohort CASCADE;
CREATE MATERIALIZED VIEW cohort AS

WITH cases AS (
    SELECT
         drugs.subject_id
        ,drugs.hadm_id
        ,drugs.ndc
        ,CASE 
            WHEN drugs.ndc IN (
                '00456320563' -- 'MEMA5'
                ,'00456321063' -- 'MEMA10'
            )
            THEN 1 ELSE 0
        END AS memantine
        ,CASE 
            WHEN drugs.ndc IN (
                '00121064610' -- 'AMAN100L'
                ,'51079048101' -- 'AMAN100'
                ,'51079048120' -- 'AMAN100'
                ,'57480030001' -- 'AMAN100'
                ,'60951065616' -- 'AMANT50MG'
                ,'63481020516' -- 'AMANT50MG'
            )
            THEN 1 ELSE 0
        END AS amantadine
        ,CASE 
            WHEN drugs.ndc IN (
                '00115191101' -- 'RIMA100'
                ,'00258371101' -- 'RIMA100'
            )
            THEN 1 ELSE 0
        END AS rimantadine
    FROM prescriptions drugs
)


SELECT DISTINCT ON (dxicd.subject_id, dxicd.subject_id)
     dxicd.subject_id
    ,dxicd.hadm_id
    ,cases.ndc
    ,cases.memantine
    ,cases.amantadine
    ,cases.rimantadine
    ,dxicd.icd9_code
    ,dxicd.seq_num
    ,CASE 
        WHEN dxicd.icd9_code
            ILIKE ANY (ARRAY ['433%1', '434%1'])
            -- OR obstructive hydrocephalus (?)
        THEN 1 ELSE 0
    END AS ischemic  
    ,CASE 
        WHEN dxicd.icd9_code 
			BETWEEN '4320' AND '4329' -- Other and unspecified intracranial hemorrhage
        OR dxicd.icd9_code IN (
            -- ,'430' -- Subarachnoid hemorrhage
            '431' -- Intracerebral hemorrhage
            ,'99702' -- Iatrogenic cerb hemorrhage or infarct
        ) 
        THEN 1 ELSE 0
    END AS hemorrhagic
FROM diagnoses_icd dxicd
LEFT JOIN cases
    ON dxicd.hadm_id = cases.hadm_id
WHERE cases.* IS NOT NULL
	AND (
		dxicd.icd9_code ILIKE ANY (ARRAY ['433%1', '434%1'])
    	OR dxicd.icd9_code IN (/*,'430',*/ '431', '99702')
	)
	
