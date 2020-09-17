--- Antivirals (Tamiflu)
--- Thrombolytics
--- Anticoagulants
--- Antiplatelets
--- Corticosteroids
--- Antibiotics

DROP MATERIALIZED VIEW IF EXISTS pharmaceuticals CASCADE;
CREATE MATERIALIZED VIEW pharmaceuticals AS

WITH thromb AS (
    SELECT 
        cev.* 
    FROM chartevents cev
    INNER JOIN 
    WHERE cev.itemid IN get_itemids('lytic')

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

-- $$ LANGUAGE plpgsql
