-- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4729656/
-- -- These administrative codes for ischemic and hemorrhagic stroke have been previously validated as having a sensitivity and specificity of 85% or higher
-- -- -- Ischemic stroke was defined as a hospitalization with ICD-9-CM codes 433.x1, 434.x1, or 436 in any discharge diagnosis position without a primary discharge code for rehabilitation (V57) or an accompanying diagnosis of trauma (ICD-9-CM 800–804 or 850–854) or ICH (ICD-9-CM 431) or subarachnoid hemorrhage (ICD-9-CM 430) in any diagnostic position.
-- -- -- ICH was defined using ICD-9-CM code 431 in any discharge position without concomitant codes for rehabilitation (V57) in the primary diagnosis position or trauma (ICD-9-CM 800–804 or 850–854) in any position. 

WITH cases AS (
    SELECT
         drugs.subject_id
        ,drugs.hadm_id
        ,drugs.ndc
        ,max(
            CASE 
                WHEN drugs.ndc IN (
                    '00456320563' -- 'MEMA5'
                    ,'00456321063' -- 'MEMA10'
                )
                THEN 1 ELSE 0
            END
        ) AS memantine
        ,max(
            CASE 
                WHEN drugs.ndc IN (
                    '00121064610' -- 'AMAN100L'
                    ,'51079048101' -- 'AMAN100'
                    ,'51079048120' -- 'AMAN100'
                    ,'57480030001' -- 'AMAN100'
                    ,'60951065616' -- 'AMANT50MG'
                    ,'63481020516' -- 'AMANT50MG'
                )
                THEN 1 ELSE 0
            END
        ) AS amantadine
        ,max(
            CASE 
                WHEN drugs.ndc IN (
                    '00115191101' -- 'RIMA100'
                    ,'00258371101' -- 'RIMA100'
                )
                THEN 1 ELSE 0
            END
        ) AS rimantadine
    FROM prescriptions drugs
    GROUP BY
         drugs.hadm_id
        ,drugs.subject_id
        ,drugs.ndc
)

SELECT
     dxicd.subject_id
    ,dxicd.hadm_id
    ,dxicd.icd9_code
    ,dxicd.seq_num
    ,cases.ndc
    ,cases.memantine
    ,cases.amantadine
    ,cases.rimantadine
    ,CASE 
        WHEN dxicd.icd9_code
            ILIKE ANY ( 
                ARRAY (
                    SELECT icd9_code 
                    FROM idx_stroke_icd9
                    WHERE category = 'ischemic'
                )
            ) 
        THEN 1 ELSE 0
    END AS ischemic  
    ,CASE 
        WHEN dxicd.icd9_code 
            IN (
                SELECT icd9_code 
                FROM idx_stroke_icd9 
                WHERE category = 'hemorhagic'
            )
        THEN 1 ELSE 0
    END AS hemorrhagic
FROM diagnoses_icd dxicd
LEFT JOIN cases
    ON  dxicd.subject_id = cases.subject_id
    AND dxicd.hadm_id = cases.hadm_id
WHERE dxicd.icd9_code ILIKE ANY ( 
        ARRAY (
            SELECT icd9_code 
            FROM idx_stroke_icd9
        )
    )
GROUP BY 
     dxicd.subject_id
    ,dxicd.hadm_id
    ,dxicd.icd9_code
    ,dxicd.seq_num
    ,cases.ndc
    ,cases.memantine
    ,cases.amantadine
    ,cases.rimantadine
-- WHERE cases.* IS NOT NULL
-- AND (
-- -- Pt is not enrolled in a clinical trial
-- -- See the following tables: 
-- --   D_ITEMS.CATEGORIES = "Research Enrollment Note"
-- --   NOTEEVENTS.DESCRIPTION = "CLINICAL RESEARCH GRANT" and NOTEEVENTS.CATEGORY = "Radiology"
-- )

