
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

CREATE OR REPLACE FUNCTION get_ditems(which TEXT)
RETURNS INTEGER[] AS 
$$
DECLARE 
    _ditems INTEGER[];
BEGIN
    IF    which = 'thromb' THEN
    ELSIF which = 'xygris' THEN
    ELSIF which = 'tamiflu' THEN
    ELSiF which = 'corticos' THEN
    ELSIF which = 'antibios'
    ELSIF which 
    ELSE

    EXECUTE 'CREATE TABLE ' || _tablename
    ;

    --insert all the values in this intermediate table
    EXECUTE ' INSERT INTO ' || _tablename || ' ( select t_stamp , sum(data)   from thing_data td, collector_tb ct where td.thingname = 
            ct.collector_name and td.t_stamp BETWEEN  ' ||  quote_literal(start_time) || ' AND ' || quote_literal(end_time) || ' and 
            ct.type like ' || quote_literal('%outlet%') ||' AND  customer_id = ' || customer_id || ' GROUP BY t_stamp)'
    ; 

    EXECUTE 
        'select width_bucket(sum_of_values,500, 1000 , 100), count(*) as cnt from ' || _tablename || ' GROUP BY 1 ORDER BY 1'
    ;

    EXECUTE 
        'select array (select cnt from (select width_bucket(sum_of_values,500, 1000 , 100), count(*) as cnt from  '|| _tablename ||' GROUP BY 1 ORDER BY 1) a)' 
    INTO _return_array
    ;

    EXECUTE 'DROP TABLE ' || _tablename;

    RETURN _return_array;

END $$ LANGUAGE plpgsql;


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

-- $$ LANGUAGE plpgsql
