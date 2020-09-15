
--- Antivirals (Tamiflu)
--- Thrombolytics
--- Anticoagulants
--- Antiplatelets
--- Corticosteroids
--- Antibiotics

-- D_ICD_PROCEDURES
-- ICD9-CODE    LONG_TITLE
-- "0011"	        "Infusion of drotrecogin alfa (activated)"

-- D_ITEMS
-- ITEMID   LABEL
-- 228003	"Tamiflu"

DROP MATERIALIZED VIEW IF EXISTS pharmaceuticals CASCADE;
CREATE MATERIALIZED VIEW pharmaceuticals AS

WITH thromb AS (
    SELECT * FROM chartevents 
    WHERE itemid IN (
         1955	-- 	"Xygris"
        ,5556	-- 	"TPA mg/hr"
        ,3147	-- 	"TPA #2 mg/hr"
        ,3148	-- 	"TPA#1 mg/hr"
        ,1717	-- 	"tPA            mg/hr"
        ,5841	-- 	"TPA"
        ,5892	-- 	"tpa mg/hr"
        ,2145	-- 	"tpa"
        ,2344	-- 	"TPA MG/HR"
        ,2686	-- 	"TPA MG/MIN"
        ,2705	-- 	"TPA - left   mg/hr"
        ,2706	-- 	"TPA -right mg/hr"
        ,2861	-- 	"TPA mg/HR"
        ,8285	-- 	"TPA            mg/hr"
        ,6279	-- 	"TPA 50MG IN 500NS"
        ,6912	-- 	"tpa mg/hour"
        ,41002	--  "TPA .5mg/hr"
        ,30135	--  "TPA"
        ,42074	--  "TPA 1MG/5CC"
        ,43020	--  "TPA 50mg/250cc"
        ,43021	--  "TPA 50mg/250cc #2"
        ,46561	--  "TPA MG/HR"
        ,44190	--  "tpa 50 mg in 500cc"
        ,45872	--  "tpa cc/hr"
        ,2666	-- 	"alteplase"
        ,2667	-- 	"alteplase mg/hr"
        ,42575	--  "alteplase"
        ,221319	--  "Alteplase (TPA)"
    )
)

SELECT 
     cht.subject_id
    ,cht.hadm_id
    ,thb.itemid
FROM cohort cht 
WHERE thb.itemid IS NOT NULL
LEFT JOIN thromb thb 
    ON  cht.subject_id = thb.subject_id
    AND cht.hadm_id = thb.hadm_id
GROUP BY
     cht.subject_id
    ,cht.hadm_id
    ,thb.itemid
