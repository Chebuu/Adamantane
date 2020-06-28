-----------------------------------
-- DIAGNOSES / [ICD-9-CM Vol. 1] --
-----------------------------------
,CASE
    WHEN dxicd.diagnoses_icd IN (
        -- 964.4 - Poison-fibrinolysis agnt
        -- E934.4 - Adv eff fibrinolysis agt
         '9910' -- Injection or infusion of thrombolytic agent
        ,'4588' -- Status post administration of tPA (rtPA) in a different facility within the last 24 hours prior to admission to current facility
    )
    THEN 1 ELSE 0
END AS thrombolytic

-----------------------------------
-- PROCEDURES / ICD-9-CM Vol. 3] --
-----------------------------------
-- Surgical interventions
-- -- Hemorrhagic
-- -- -- EVD
-- -- -- SCUBA or endoscopic 
-- -- -- Craniotomy repair
-- -- -- Craniotomy aspiration
-- -- -- Coiling
-- -- -- Clipping
-- -- Ischemic
-- -- -- Endarterectomy
--
-- ICD-9-CM Vol. 3
        -- OPERATIONS ON THE CARDIOVASCULAR SYSTEM (35-39)
        -- -- 38 Incision, excision, and occlusion of vessels
        -- -- -- 38.0 Incision of vessel
        -- -- -- -- 38.00 Incision of vessel; unspecified site
        -- -- -- -- 38.01 Incision of vessel; intracranial vessels
        -- -- -- -- 38.02 Incision of vessel; other vessels of head and neck
        --
        -- -- 02.2 - Ventriculostomy
        -- -- 01.31 - Incision of cerebral meninges
        -- -- 02.22 - Intrcran vent shunt/anas
        -- -- 03.92 - Injection of other agent into spinal canal
        -- -- 01.09 - Incision and excision of skull, brain, and cerebral meninges; Other cranial
        -- -- 03.90 - Insertion of catheter into spinal canal for infusion of therapeutic or pall
        -- -- 03.71 - Spinal subarachnoid-peritoneal shunt
        -- -- 03.72 - Spinal subarachnoid-ureteral shunt
        -- -- 03.79 - Other shunt of spinal theca
        -- -- 03.97 - Revision of spinal thecal shunt
        -- -- 03.98 - Removal of spinal thecal shunt

-- D_ICD_PROCEDURES
-- ICD_CODE     LONG_TITLE
-- "0202"      "Elevation of skull fracture fragments"
-- "0231"      "Ventricular shunt to structure in head and neck"


,CASE
    WHEN dxicd.diagnoses_icd IN (
        3811 -- Endarterectomy, Intracranial Vessels
        3812 -- Endarterectomy, Other Vessels Of Head And Neck
    )
    THEN 1 ELSE 0
END AS endarterectomy
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS clipping
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS coiling
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS embolization
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS clamp
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS craniotomy
WHEN dxicd.diagnoses_icd IN (
        
    )
    THEN 1 ELSE 0
END AS craniectomy
WHEN dxicd.diagnoses_icd IN (
        -- Ventriculostomy or lumbar drain
    )
    THEN 1 ELSE 0
END AS hummingbird
