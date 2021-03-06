
-- https://www.aafp.org/afp/2009/0701/p33.html
-- -- Most Common Symptoms and Signs of Stroke and Their Reliability
-- -- -- # SYMPTOMS
-- -- -- Acute onset
-- -- --     96% Good (0.63)4
-- -- -- Subjective arm weakness†
-- -- --     63% Moderate (0.59)4
-- -- -- Subjective leg weakness†
-- -- --     54% Moderate (0.59)4
-- -- -- Self-reported speech disturbance
-- -- --     53% Good (0.64)4
-- -- -- Subjective facial weakness
-- -- --     23% —
-- -- -- Arm paresthesia‡
-- -- --     20% Good (0.62)4
-- -- -- Leg paresthesia‡
-- -- --     17% Good (0.62)4
-- -- -- Headache
-- -- --     14% Good (0.65)4
-- -- -- Nonorthostatic dizziness
-- -- --     13% —
-- -- -- # SIGNS
-- -- -- Arm paresis
-- -- --     69% Moderate to excellent (0.42 to 1.00)4,9
-- -- -- Leg paresis
-- -- --     61% Fair to excellent (0.40 to 0.84)4,9
-- -- -- Dysphasia or dysarthria
-- -- --     57% Moderate to excellent (0.54 to 0.84)4,9
-- -- -- Hemiparetic or ataxic gait
-- -- --     53% Excellent (0.91)9
-- -- -- Facial paresis
-- -- --     45% Poor to excellent (0.13 to 1.00)4,9
-- -- -- Eye movement abnormality
-- -- --     27% Fair to excellent (0.33 to 1.00)9
-- -- -- Visual field defect
-- -- --     24% Poor to excellent (0.16 to 0.81)4,9


-- D_ICD_PROCEDURES
-- ICD9_CODE   LONG_TITLE
-- "2031"	   "Electrocochleography"
-- ... ...
-- "8914"	   "Electroencephalogram"
-- "8915"	   "Other nonoperative neurologic function tests"
-- "8918"	   "Other sleep disorder function tests"
-- ... ...
-- "9544"	   "Clinical vestibular function tests"
-- "9546"	   "Other auditory and vestibular function tests"
-- ... ...
-- "9304"	   "Manual testing of muscle function"
-- "9308"	   "Electromyography"



with neuro as (
    -- -- -- -- -- -- --
    -- -- D_ITEMS  -- -- 
    -- -- -- -- -- -- --
    -- 
    -- CATEGORY 
    -- -------- |
    -- "Treatments"
    -- "Neurological"
    -- "Routine Vital Signs"
    -- "Pain/Sedation"
    -- "3-Significant Events"
    -- "2-Ventilation"
    -- "1-Intubation/Extubation"
    -- "ADT" [¿Auditory Descrimination Test?]
    -- "Lumbar Puncture"
    -- "Cardiovascular"
    -- "Cardiovascular (Pacer Data)"
    -- "Intubation"
    -- "Hemodynamics"
    -- "Free Form Intake"
    -- "Nutrition - Enteral"
    -- "Nutrition - Supplements"
    -- "Fluids/Intake"
    -- "Drains"
    -- "Medications"
    -- "Meds"
    --
    -- ITEMID       LABEL
    -- ------   |   -------
    -- 227121	    "Pupil Response R"	"chartevents"	"Pupil Response Right"
    -- 227122	    "Neuro Drain Landmark"	"chartevents"	"Neuro Drain Landmark"
    -- 227288	    "Pupil Response L"	"chartevents"	"Pupil Response Left"
    -- 228394	    "Orientation to Person"	"chartevents"	"Orientation to Person"
    -- 228395	    "Orientation to Place"	"chartevents"	"Orientation to Place"
    -- 228396	    "Orientation to Time"	"chartevents"	"Orientation to Time"
    -- 228397	    "Commands Response"	"chartevents"	"Commands Response"
    -- 228398	    "Commands"	"chartevents"	"Commands"
    -- 228399	    "Facial Droop"	"chartevents"	"Facial Droop"
    -- 228400	    "Visual Field Cut"	"chartevents"	"Visual Field Cut"
    -- 228401	    "Pronator Drift"	"chartevents"	"Pronator Drift"
    -- 228402	    "Neurological Symptoms"	"chartevents"	"Neurological Symptoms"
    -- 228404	    "Motor L Arm"	"chartevents"	"Motor L Arm"
    -- 228405	    "Motor L Leg"	"chartevents"	"Motor L Leg"
    -- 228406	    "Motor R Arm"	"chartevents"	"Motor R Arm"
    -- 228407	    "Motor R Leg"	"chartevents"	"Motor R Leg"
    -- 228409	    "Strength L Arm"	"chartevents"	"Strength L Arm"
    -- 228410	    "Strength L Leg"	"chartevents"	"Strength L Leg"
    -- 228411	    "Strength R Leg"	"chartevents"	"Strength R Leg"
    -- 228412	    "Strength R Arm"	"chartevents"	"Strength R Arm"
    -- 228413	    "Seizure Activity"	"chartevents"	"Seizure Activity"
    -- 228414	    "Speech"	"chartevents"	"Speech"
    -- 228415	    "Corneal Reflex Left"	"chartevents"	"Corneal Reflex Left"
    -- 228416	    "Corneal Reflex Right"	"chartevents"	"Corneal Reflex Right"
    -- 227591	    "Neuro Drain Landmark"	"chartevents"	"Neuro Drain Landmark"
    -- 224730	    "Corneal Reflex Right"	"chartevents"	"Corneal Reflex Right"
    -- 224731	    "Corneal Reflex Left"	"chartevents"	"Corneal Reflex Left"
    -- 224733	    "Pupil Size Left"	"chartevents"	"Pupil Size Left"
    -- 224756	    "Response"	"chartevents"	"Response"
    -- 224758	    "RUE Sensation"	"chartevents"	"RUE Sensation"
    -- 224759	    "LUE Sensation"	"chartevents"	"LUE Sensation"
    -- 224762	    "LLE Sensation"	"chartevents"	"LLE Sensation"
    -- 224764	    "Neuro Drain Location"	"chartevents"	"Neuro Drain Location"
    -- 224765	    "Neuro Drain HOB"	"chartevents"	"Neuro Drain Head of Bed"
    -- 224380	    "Neuro Waveform Appearance"	"chartevents"	"Neuro Waveform Appearance"
    -- 227988	    "Pronator drift present"	"chartevents"	"Pronator drift present"
    -- 226104	    "Level of Consciousness"	"chartevents"	"Level of Consciousness"
    -- 226105	    "Behavior"	"chartevents"	"Behavior"
    -- 227981	    "Neuro Drain #2 Type"	"chartevents"	"Neuro Drain #2 Type"
    -- 227982	    "Neuro Drain #2 Status"	"chartevents"	"Neuro Drain #2 Status"
    -- 227983	    "Neuro Drain #2 Drainage"	"chartevents"	"Neuro Drain #2 Drainage"
    -- 227984	    "Neuro Drain #2 Level"	"chartevents"	"Neuro Drain #2 Level"
    -- 227985	    "Neuro Drain #1 Landmark"	"chartevents"	"Neuro Drain #1 Landmark"
    -- 227986	    "Neuro Drain #2 Landmark"	"chartevents"	"Neuro Drain #2 Landmark"
    -- 220739	    "Eye Opening"	"chartevents"	"GCS - Eye Opening"
    -- 223898	    "Orientation"	"chartevents"	"Orientation"
    -- 223902	    "Speech"	"chartevents"	"Speech"
    -- 223903	    "Communication"	"chartevents"	"Communication"
    -- 223904	    "Gag Reflex"	"chartevents"	"Gag Reflex"
    -- 223905	    "Cough Reflex"	"chartevents"	"Cough Reflex"
    -- 223907	    "Pupil Size Right"	"chartevents"	"Pupil Size Right"
    -- 223910	    "Follows Commands"	"chartevents"	"Follows Commands"
    -- 223911	    "Spontaneous Movement"	"chartevents"	"Spontaneous Movement"
    -- 223916	    "Response to Stimuli (Type)"	"chartevents"	"Response to Stimuli (Type)"
    -- 223917	    "RU Strength/Movement"	"chartevents"	"RU Strength/Movement"
    -- 223918	    "RL Strength/Movement"	"chartevents"	"RL Strength/Movement"
    -- 223919	    "LU Strength/Movement"	"chartevents"	"LU Strength/Movement"
    -- 223920	    "LL Strength/Movement"	"chartevents"	"LL Strength/Movement"
    -- 223921	    "Neuro Symptoms"	"chartevents"	"Neuro Symptoms"
    -- 223923	    "Seizure Activity"	"chartevents"	"Seizure Activity"
    -- 223924	    "RLE Sensation"	"chartevents"	"RLE Sensation"
    -- 223925	    "Seizure Duration"	"chartevents"	"Seizure Duration"
    -- 223926	    "Neuro Drain #1 Type"	"chartevents"	"Neuro Drain #1 Type"
    -- 223930	    "Neuro Drain #1 Level"	"chartevents"	"Neuro Drain #1 Level"
    -- 223931	    "Neuro Drain #1 Status"	"chartevents"	"Neuro Drain #1 Status"
    -- 223932	    "Neuro Drain #1 Drainage"	"chartevents"	"Neuro Drain #1 Drainage"
    -- 223754	    "Risk for Falls"	"chartevents"	"Risk for Falls"
)


-- $$ LANGUAGE plpgsql
