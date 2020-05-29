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


SELECT DISTINCT ON (dxicd.subject_id)
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
            -- OR extracranial occlusion (?)
            -- -- "4350"	"Basilar artery syndrome"
            -- -- "4351"	"Vertebral artery syndrome"
            -- -- "4352"	"Subclavian steal syndrome"
            -- -- "4353"	"Vertebrobasilar artery syndrome"
            -- OR undefined inchemia (?)
            -- -- "4358"	"Other specified transient cerebral ischemias"
            -- -- "4359"	"Unspecified transient cerebral ischemia"
        THEN 1 ELSE 0
    END AS ischemic  
    ,CASE 
        WHEN dxicd.icd9_code 
			BETWEEN '4320' AND '4329' -- Other and unspecified intracranial hemorrhage
        OR dxicd.icd9_code IN (
             '430'      -- Subarachnoid hemorrhage
            ,'431'      -- Intracerebral hemorrhage
            ,'4321'	    -- 'Subdural hemorrhage'
            ,'4329'	    -- 'Unspecified intracranial hemorrhage'
            ,'43491'    -- 'Cerebral artery occlusion, unspecified with cerebral infarction'
            ,'80432'    -- 'Closed fractures involving skull or face with other bones, with other and unspecified intracranial hemorrhage, with brief [less than one hour] loss of consciousness'
            ,'85200'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness'
            ,'85201'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness'
            ,'85250'	-- 'Extradural hemorrhage following injury with open intracranial wound, unspecified state of consciousness'
            ,'85251'	-- 'Extradural hemorrhage following injury with open intracranial wound, with no loss of consciousness'
            ,'85252'	-- 'Extradural hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85253'	-- 'Extradural hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85254'	-- 'Extradural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85255'	-- 'Extradural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85256'	-- 'Extradural hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85259'	-- 'Extradural hemorrhage following injury with open intracranial wound, with concussion, unspecified'
            ,'85300'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness'
            ,'85301'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness'
            ,'85302'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85303'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85304'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre- existing conscious level'
            ,'85305'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85306'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85309'	-- 'Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified'
            ,'85310'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, unspecified state of consciousness'
            ,'85311'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with no loss of consciousness'
            ,'85312'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85313'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85314'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85315'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85316'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85319'	-- 'Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with concussion, unspecified'
            ,'85202'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85203'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85204'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85205'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85206'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85209'	-- 'Subarachnoid hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified'
            ,'85210'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, unspecified state of consciousness'
            ,'85211'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with no loss of consciousness'
            ,'85212'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85213'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85214'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours) loss of consciousness and return to pre-existing conscious level'
            ,'85215'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85216'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85219'	-- 'Subarachnoid hemorrhage following injury with open intracranial wound, with concussion, unspecified'
            ,'85220'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness'
            ,'85221'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness'
            ,'85222'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85223'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85224'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85225'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85226'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85229'	-- 'Subdural hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified'
            ,'85230'	-- 'Subdural hemorrhage following injury with open intracranial wound, unspecified state of consciousness'
            ,'85231'	-- 'Subdural hemorrhage following injury with open intracranial wound, with no loss of consciousness'
            ,'85232'	-- 'Subdural hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness'
            ,'85233'	-- 'Subdural hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85234'	-- 'Subdural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85235'	-- 'Subdural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85236'	-- 'Subdural hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85239'	-- 'Subdural hemorrhage following injury with open intracranial wound, with concussion, unspecified'
            ,'85240'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness'
            ,'85241'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness'
            ,'85242'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with brief [less than 1 hour] loss of consciousness'
            ,'85243'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness'
            ,'85244'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level'
            ,'85245'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level'
            ,'85246'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration'
            ,'85249'	-- 'Extradural hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified'
            ,'99702'    --  Iatrogenic cerb hemorrhage or infarct
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
    -- AND (
    -- -- Pt is not enrolled in a clinical trial
    -- -- See the following tables: 
    -- --   D_ITEMS.CATEGORIES = "Research Enrollment Note"
    -- --   NOTEEVENTS.DESCRIPTION = "CLINICAL RESEARCH GRANT" and NOTEEVENTS.CATEGORY = "Radiology"
    -- )



