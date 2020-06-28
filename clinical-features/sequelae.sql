-- https://www.aafp.org/afp/2009/0701/p33.html
-- -- Oxfordshire Ischemic Stroke Subtypes and Clinical Features
-- Total anterior circulation infarct (TACI)
-- -- Combination of new higher cerebral dysfunction (e.g., dysphasia, dyscalculia, visual-spatial disorder); homonymous visual field defect and ipsilateral motor and/or sensory defect involving two areas of the face, arm, or leg
-- Lacunar infarct (LACI)
-- -- Pure motor or pure sensory symptoms, sensorimotor stroke, or ataxic hemiparesis; face-arm and arm-leg syndromes included
-- Partial anterior circulation infarct (PACI)
-- -- Patients with only two of three TACI components, with higher cerebral dysfunction alone, or with a motor/sensory deficit more restricted than those classified as LACI (e.g., confined to one limb or to face and hand, but not the whole arm)
-- Posterior circulation infarct (POCI)
-- -- Any one of the following: ipsilateral cranial nerve palsy with contralateral motor and/or sensory deficit; bilateral motor and/or sensory deficit; disorder of conjugate gaze; cerebellar dysfunction without ataxic hemiparesis; isolated homonymous visual field defect


-- -- ICD-9-CM Vol. 1
-- DISEASES OF THE NERVOUS SYSTEM AND SENSE ORGANS (320-389)
-- SYMPTOMS, SIGNS, ILL-DEFINED CONDITIONS (780-799)
--     NONSPECIFIC ABNORMAL FINDINGS (790-796)
--         793 Nonspecific (abnormal) findings on radiological and other examination of body structure
--         794 Nonspecific abnormal results of function studies


-- ICD-9   D_ICD_DIAGNOSES.LONG_TITLE
-- "9301"	"Functional evaluation"
-- "9374"	"Speech defect training"
-- ...      ...
-- "43884"	"Other late effects of cerebrovascular disease, ataxia"
-- "43885"	"Other late effects of cerebrovascular disease, vertigo"
-- "43889"	"Other late effects of cerebrovascular disease"
-- "4389"	"Unspecified late effects of cerebrovascular disease"
-- "4380"	"Late effects of cerebrovascular disease, cognitive deficits"
-- "43810"	"Late effects of cerebrovascular disease, speech and language deficit, unspecified"
-- "43811"	"Late effects of cerebrovascular disease, aphasia"
-- "43812"	"Late effects of cerebrovascular disease, dysphasia"
-- "43813"	"Late effects of cerebrovascular disease, dysarthria"
-- "43814"	"Late effects of cerebrovascular disease, fluency disorder"
-- "43819"	"Late effects of cerebrovascular disease, other speech and language deficits"
-- "43820"	"Late effects of cerebrovascular disease, hemiplegia affecting unspecified side"
-- "43821"	"Late effects of cerebrovascular disease, hemiplegia affecting dominant side"
-- "43822"	"Late effects of cerebrovascular disease, hemiplegia affecting nondominant side"
-- "43830"	"Late effects of cerebrovascular disease, monoplegia of upper limb affecting unspecified side"
-- "43831"	"Late effects of cerebrovascular disease, monoplegia of upper limb affecting dominant side"
-- "43832"	"Late effects of cerebrovascular disease, monoplegia of upper limb affecting nondominant side"
-- "43840"	"Late effects of cerebrovascular disease, monoplegia of lower limb affecting unspecified side"
-- "43841"	"Late effects of cerebrovascular disease, monoplegia of lower limb affecting dominant side"
-- "43842"	"Late effects of cerebrovascular disease, monoplegia of lower limb affecting nondominant side"
-- "43850"	"Late effects of cerebrovascular disease, other paralytic syndrome affecting unspecified side"
-- "43851"	"Late effects of cerebrovascular disease, other paralytic syndrome affecting dominant side"
-- "43852"	"Late effects of cerebrovascular disease, other paralytic syndrome affecting nondominant side"
-- "43853"	"Late effects of cerebrovascular disease, other paralytic syndrome, bilateral"
-- "4386"	"Late effects of cerebrovascular disease, alterations of sensations"
-- "4387"	"Late effects of cerebrovascular disease, disturbances of vision"
-- "43881"	"Other late effects of cerebrovascular disease, apraxia"
-- "43882"	"Other late effects of cerebrovascular disease, dysphagia"
-- "43883"	"Other late effects of cerebrovascular disease, facial weakness"


-- D_ITEMS
-- ITEMID      LABEL
-- 1991		"pronator drift"
-- 1998		"Facial Droop"
-- 1999		"Pronator Drift"
-- 2807		"facial droop"
-- 6322		"Face Droop"
-- 228399	    "Facial Droop"
-- 228401	    "Pronator Drift"
-- 227988	    "Pronator drift present"
-- ... ...
-- 227046	    "Scores - APACHE IV"	"Post-Operative Neurologic (NEUROLOGIC)"
-- 227031	    "Scores - APACHE IV"	"Non-Operative Neurologic (NEUROLOGIC)"
-- ... ...
-- 41187	    "Neuro Angio Intake"
-- ... ...
-- 224380	    "Neuro Waveform Appearance"
-- ... ...
-- 1900		"MULTIPODIS BOOTS"
-- 1903		"OOB TO CHAIR"
-- ... ...
-- 2021		"Seizure Precautions"
-- ... ...
-- 2045		"icp left"


DROP MATERIALIZED VIEW IF EXISTS sequelae
CREATE MATERIALIZED VIEW sequelae as
