DROP VIEW IF EXISTS idx_tpa_items CASCADE;
CREATE VIEW idx_tpa_items AS 
SELECT itemid, linksto
FROM d_items
WHERE itemid IN (
     5556  -- TPA mg/hr, carevue, chartevents
    ,3147  -- TPA #2 mg/hr, carevue, chartevents
    ,3148  -- TPA#1 mg/hr, carevue, chartevents
    ,1717  -- tPA            mg/hr, carevue, chartevents
    ,5841  -- TPA, carevue, chartevents
    ,5892  -- tpa mg/hr, carevue, chartevents
    ,2145  -- tpa, carevue, chartevents
    ,2344  -- TPA MG/HR, carevue, chartevents
    ,2666  -- alteplase, carevue, chartevents
    ,2667  -- alteplase mg/hr, carevue, chartevents
    ,2686  -- TPA MG/MIN, carevue, chartevents
    ,2705  -- TPA - left   mg/hr, carevue, chartevents
    ,2706  -- TPA -right mg/hr, carevue, chartevents
    ,2861  -- TPA mg/HR, carevue, chartevents
    ,8285  -- TPA            mg/hr, carevue, chartevents
    ,6279  -- TPA 50MG IN 500NS, carevue, chartevents
    ,6912  -- tpa mg/hour, carevue, chartevents
    ,41002 -- TPA .5mg/hr, carevue, inputevents_cv
    ,42575 -- alteplase, carevue, inputevents_cv
    ,30135 -- TPA, carevue, inputevents_cv
    ,42074 -- TPA 1MG/5CC, carevue, inputevents_cv
    ,43020 -- TPA 50mg/250cc, carevue, inputevents_cv
    ,43021 -- TPA 50mg/250cc #2, carevue, inputevents_cv
    ,46561 -- TPA MG/HR, carevue, inputevents_cv
    ,44190 -- tpa 50 mg in 500cc, carevue, inputevents_cv
    ,45872 -- tpa cc/hr, carevue, inputevents_cv
    ,221319 -- Alteplase (TPA), metavision,inputevents_mv
)
