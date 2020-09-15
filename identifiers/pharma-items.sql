-- D_ICD_PROCEDURES
-- ICD9-CODE    LONG_TITLE
-- "0011"	        "Infusion of drotrecogin alfa (activated)"

CREATE OR REPLACE FUNCTION get_ditems(which TEXT)
RETURNS INTEGER[] AS 
$$
DECLARE 
    _ditems INTEGER[];    
BEGIN
    IF 
    which = 'thromb' THEN
        EXECUTE 
            'SELECT ARRAY (
                5556	-- 	"TPA mg/hr"
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
            )'
        INTO _ditems;
    ELSIF which = 'xygris' THEN
        EXECUTE 
            'SELECT ARRAY (
                1955	-- 	"Xygris"
            )'
        INTO _ditems;
    ELSIF which = 'acoag' THEN
    ELSIF which = 'aplat' THEN
    ELSIF which = 'tamiflu' THEN
        EXECUTE 
            'SELECT ARRAY (
                
            )'
        INTO _ditems;
    ELSiF which = 'corticos' THEN
        EXECUTE 
            'SELECT ARRAY (
                
            )'
        INTO _ditems;
    ELSIF which = 'antibios' THEN
        EXECUTE 
            'SELECT ARRAY (
                
            )'
        INTO _ditems;
    ELSE 
        EXECUTE 'SELECT ARRAY (0)' INTO _ditems;
    END IF;
    RETURN _ditems
END $$ LANGUAGE plpgsql;

-- -- DROP VIEW IF EXISTS idx_tpa_items CASCADE;
-- -- CREATE VIEW idx_tpa_items AS 
-- -- SELECT itemid, linksto
-- -- FROM d_items
-- -- WHERE itemid IN (
-- --      5556  -- TPA mg/hr, carevue, chartevents
-- --     ,3147  -- TPA #2 mg/hr, carevue, chartevents
-- --     ,3148  -- TPA#1 mg/hr, carevue, chartevents
-- --     ,1717  -- tPA            mg/hr, carevue, chartevents
-- --     ,5841  -- TPA, carevue, chartevents
-- --     ,5892  -- tpa mg/hr, carevue, chartevents
-- --     ,2145  -- tpa, carevue, chartevents
-- --     ,2344  -- TPA MG/HR, carevue, chartevents
-- --     ,2666  -- alteplase, carevue, chartevents
-- --     ,2667  -- alteplase mg/hr, carevue, chartevents
-- --     ,2686  -- TPA MG/MIN, carevue, chartevents
-- --     ,2705  -- TPA - left   mg/hr, carevue, chartevents
-- --     ,2706  -- TPA -right mg/hr, carevue, chartevents
-- --     ,2861  -- TPA mg/HR, carevue, chartevents
-- --     ,8285  -- TPA            mg/hr, carevue, chartevents
-- --     ,6279  -- TPA 50MG IN 500NS, carevue, chartevents
-- --     ,6912  -- tpa mg/hour, carevue, chartevents
-- --     ,41002 -- TPA .5mg/hr, carevue, inputevents_cv
-- --     ,42575 -- alteplase, carevue, inputevents_cv
-- --     ,30135 -- TPA, carevue, inputevents_cv
-- --     ,42074 -- TPA 1MG/5CC, carevue, inputevents_cv
-- --     ,43020 -- TPA 50mg/250cc, carevue, inputevents_cv
-- --     ,43021 -- TPA 50mg/250cc #2, carevue, inputevents_cv
-- --     ,46561 -- TPA MG/HR, carevue, inputevents_cv
-- --     ,44190 -- tpa 50 mg in 500cc, carevue, inputevents_cv
-- --     ,45872 -- tpa cc/hr, carevue, inputevents_cv
-- --     ,221319 -- Alteplase (TPA), metavision,inputevents_mv
-- -- )

-- -- -- $$ LANGUAGE plpgsql
