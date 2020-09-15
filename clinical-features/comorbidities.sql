-- Brief Comorbidities:
--     HTN
--     CKD
--     PVD
--     CAD
--     CHF
--     COPD
--     A-fib
--     DM-1/II

--- ---
--- Possible clinical score confounders
--- ---
-- ICD-9-CM Vol. 1
-- Mental Disorders (290-319)
--     290-294  Organic Psychotic Conditions 
--     295-299  Other Psychoses
--     300-316  Neurotic Disorders, Personality Disorders, And Other Nonpsychotic Mental Disorders
--     317-319  Intellectual Disabilities
-- Diseases Of The Musculoskeletal System And Connective Tissue (710-739)
--     710-719  Arthropathies And Related Disorders
--     720-724  Dorsopathies
--     725-729  Rheumatism, Excluding The Back
--     730-739  Osteopathies, Chondropathies, And Acquired Musculoskeletal Deformities
-- Congenital Anomalies (740-759)
-- Certain Conditions Originating In The Perinatal Period (760-779)
-- Ill-Defined And Unknown Causes Of Morbidity And Mortality (797-799)
--     797 Senility without mention of psychosis
--     798 Sudden death cause unknown
--     799 Other ill-defined and unknown causes of morbidity and mortality

-- -- --
-- *MISCELLANEOUS*
-- -- --
-- ICD_9    D_ICD_PROCEDURES.LONG_TITLE
-- "1829"	"Excision or destruction of other lesion of external ear"
-- "185"	"Surgical correction of prominent ear"
-- "186"	"Reconstruction of external auditory canal"
-- "1871"	"Construction of auricle of ear"
-- "1911"	"Stapedectomy with incus replacement"
-- "1919"	"Other stapedectomy"
-- "1921"	"Revision of stapedectomy with incus replacement"
-- "1929"	"Other revision of stapedectomy"
-- "2372"	"Root canal therapy with apicoectomy"
-- "2373"	"Apicoectomy"
-- "2592"	"Lingual frenectomy"
-- "260"	"Incision of salivary gland or duct"
-- "2611"	"Closed [needle] biopsy of salivary gland or duct"
-- "2612"	"Open biopsy of salivary gland or duct"
-- "2619"	"Other diagnostic procedures on salivary glands and ducts"
-- "2630"	"Sialoadenectomy, not otherwise specified"
-- "2631"	"Partial sialoadenectomy"
-- "2632"	"Complete sialoadenectomy"
-- "2649"	"Other repair and plastic operations on salivary gland or duct"
-- "2691"	"Probing of salivary duct"
-- "2699"	"Other operations on salivary gland or duct"
-- "251"	"Excision or destruction of lesion or tissue of tongue"
-- "252"	"Partial glossectomy"
-- "253"	"Complete glossectomy"
-- "254"	"Radical glossectomy"
-- "2072"	"Injection into inner ear"
-- "2079"	"Other incision, excision, and destruction of inner ear"
-- "2091"	"Tympanosympathectomy"
-- "2092"	"Revision of mastoidectomy"
-- "2094"	"Injection of tympanum"
-- "2095"	"Implantation of electromagnetic hearing device"
-- ... ...
-- "4350"  "Basilar artery syndrome"
-- "4351"  "Vertebral artery syndrome"
-- "4352"  "Subclavian steal syndrome"
-- "4353"  "Vertebrobasilar artery syndrome"
-- "4358"	"Other specified transient cerebral ischemias"
-- "4359"	"Unspecified transient cerebral ischemia"
-- "436"	"Acute, but ill-defined, cerebrovascular disease"
-- "4370"	"Cerebral atherosclerosis"
-- "4371"	"Other generalized ischemic cerebrovascular disease"
-- "4372"	"Hypertensive encephalopathy"
-- "4373"	"Cerebral aneurysm, nonruptured"
-- "4374"	"Cerebral arteritis"
-- "4375"	"Moyamoya disease"
-- "4376"	"Nonpyogenic thrombosis of intracranial venous sinus"
-- "4377"	"Transient global amnesia"
-- "4378"	"Other ill-defined cerebrovascular disease"
-- "4379"	"Unspecified cerebrovascular disease"
-- ...      ...
-- "4400"	"Atherosclerosis of aorta"
-- "4401"	"Atherosclerosis of renal artery"
-- "44020"	"Atherosclerosis of native arteries of the extremities, unspecified"
-- "44021"	"Atherosclerosis of native arteries of the extremities with intermittent claudication"
-- "44022"	"Atherosclerosis of native arteries of the extremities with rest pain"
-- "44023"	"Atherosclerosis of native arteries of the extremities with ulceration"
-- "44024"	"Atherosclerosis of native arteries of the extremities with gangrene"
-- "44029"	"Other atherosclerosis of native arteries of the extremities"
-- "44030"	"Atherosclerosis of unspecified bypass graft of the extremities"
-- "44031"	"Atherosclerosis of autologous vein bypass graft of the extremities"
-- "44032"	"Atherosclerosis of nonautologous biological bypass graft of the extremities"
-- "4404"	"Chronic total occlusion of artery of the extremities"
-- "4408"	"Atherosclerosis of other specified arteries"
-- "4409"	"Generalized and unspecified atherosclerosis"


DROP MATERIALIZED VIEW IF EXISTS comorbidities CASCADE;
CREATE MATERIALIZED VIEW comorbidities AS

SELECT cht.icustay_id 
    ,dxi.hadm_id
    ,max(
        CASE 
            WHEN dxi.icd9_code IN (
                '4910'   -- Simple chr bronchitis
                ,'4911'  -- Mucopurul chr bronchitis
                ,'4912'  -- Obstructive chronic bronchitis
                ,'49120' -- Obst chr bronc w/o exac
                ,'49121' -- Obst chr bronc w(ac) exac
                ,'49122' -- Obst chr bronc w ac bronc
                ,'4918'  -- Chronic bronchitis NEC
                ,'4919'  -- Chronic bronchitis NOS
                ,'4920'  -- Emphysematous bleb
                ,'4928'  -- Emphysema NEC
                ,'4932'  -- Chronic obstructive asthma
                ,'49320' -- Chronic obst asthma NOS
                ,'49321' -- Ch ob asthma w stat asth
                ,'49322' -- Ch obst asth w (ac) exac
            ) THEN 1 ELSE 0 
        END
    ) AS copd
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '140' AND '239' -- Malignant neoplasias
                OR dxi.icd9_code IN (
                    '28522'  -- Anemia in neoplastic dis
                    ,'2853'  -- Anemia d/t antineo chemo
                    ,'3383'  -- Neoplasm related pain
                    ,'4570'  -- Postmastect lymphedema
                    ,'V580'  -- Radiotherapy encounter
                    ,'V510'  -- Brst reconst fol mastect
                    ,'V580'  -- Radiotherapy encounter
                    ,'V5811' -- Antineoplastic chemo enc
                    ,'V5812' -- Immunotherapy encounter
                    ,'V5842' -- Aftercare neoplasm surg
                    ,'V661'  -- Radiotherapy convalescen
                    ,'V662'  -- Chemotherapy convalescen
                )
            THEN 1 ELSE 0 
        END
    ) AS cancer
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '196' AND '198' -- Secondary malignant neoplasias
                OR dxi.icd9_code = '1990' -- Disseminated secondary neoplasia
            THEN 1 ELSE 0 
        END
    ) AS metcancer
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '200' AND '208' -- Lymphatic and hematologic cancers
            THEN 1 ELSE 0 
        END
    ) AS hemcancer
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '25001' AND '25093' -- DM type 1
            THEN 1 ELSE 0 
        END
    ) AS insulindm
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '4280' AND '4289' -- Heart failure
            THEN 1 ELSE 0 
        END
    ) AS heartfailure
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '5851' AND '5859' -- CKD including CDK NOS (585.9)
            THEN 1 ELSE 0 
        END
    ) AS ckd
    , max(
        CASE 
            WHEN dxi.icd9_code IN ('049', '07953') -- CKD including CDK NOS (585.9)
            THEN 1 ELSE 0 
        END
    ) AS hiv
    , max(
        CASE 
            WHEN dxi.icd9_code IN (
                '5712'  -- Alcohol cirrhosis liver
                ,'5715' -- Cirrhosis of liver NOS
                ,'5716' -- Biliary cirrhosis
            ) THEN 1 ELSE 0 
        END
    ) AS cirrhosis
    , max(
        CASE 
            WHEN dxi.icd9_code BETWEEN '2790' AND '2793' -- Immunodeficiencies
                OR dxi.icd9_code IN (
                    '28411'  -- Antin chemo indcd pancyt
                    ,'28412' -- Oth drg indcd pancytopna
                    ,'28419' -- Other pancytopenia
                    ,'28800' -- Neutropenia NOS
                    ,'28801' -- Congenital neutropenia
                    ,'28802' -- Cyclic neutropenia
                    ,'28803' -- Drug induced neutropenia
                    ,'28804' -- Neutropenia d/t infectn
                    ,'28809' -- Neutropenia NEC
                    ,'28850' -- Leukocytopenia NOS
                    ,'28851' -- Lymphocytopenia
                    ,'28859' -- Decreased WBC count NEC
                )
            THEN 1 ELSE 0
        END
    ) AS immunosupp
    , max(
        CASE 
            WHEN dxi.icd9_code IN (
                '9620'   -- Pois-corticosteroids
                ,'9923'  -- Injection of steroid
                ,'3653'  -- Corticosteroid-induced glaucoma
                ,'V8744' -- Hx inhaled steroid thrpy
                ,'V8745' -- Hx systemc steroid thrpy
            ) THEN 1 ELSE 0
        END
    ) AS steroid
    , max(
        CASE 
            WHEN dxi.icd9_code IN (
                '9925'   -- Inj or inf of cancer chemotherapeutic substance
                ,'28411' -- Antineo chemo indcd pancyt
                ,'2853'  -- Anemia d/t antineo chemo
                ,'99981' -- Extravstn vesicant chemo
                ,'V5811' -- Antineoplastic chemo enc
                ,'V662'  -- Chemotherapy convalescen
                ,'V672'  -- Chemotherapy follow-up
                ,'V0731' -- Prophylac fluoride admin
                ,'V0739' -- Other prophylac chemothr
            ) THEN 1 ELSE 0
        END
    ) AS chemo
FROM diagnoses_icd dxi
RIGHT JOIN cohort cht
    ON cht.subject_id = dxi.subject_id
    AND cht.hadm_id = dxi.hadm_id
WHERE dxi.icd9_code IS NOT NULL
GROUP BY dxi.hadm_id, cht.icustay_id


-- $$ LANGUAGE plpgsql
