DROP VIEW IF EXISTS idx_stroke_icd9 CASCADE;
CREATE VIEW idx_stroke_icd9 (icd9_code, category) AS 
VALUES
     ('433%1', 'ischemic') -- Occlusion and stenosis of precerebral arteries (with infarct)
    ,('434%1', 'ischemic') -- Occlusion of cerebral arteries (with infarct)
    ,('430' ,  'hemorrhagic') -- Subarachnoid hemorrhage
    ,('431' ,  'hemorrhagic') -- Intracerebral hemorrhage
    ,('4320',  'hemorrhagic') -- Nontraumatic extradual hemorrhage
    ,('4321',  'hemorrhagic') -- Subdural hemorrhage
    ,('4329',  'hemorrhagic') -- Intracranial hemorrhage NOS
    ,('4321',  'hemorrhagic') -- Subdural hemorrhage
    ,('4329',  'hemorrhagic') -- Intracranial hemorrhage NOS
    ,('80432', 'hemorrhagic') -- Closed fractures involving skull [...], with [...] intracranial hemorrhage [NOS], with [<1hr] loss of consciousness
    ,('85200', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, unspecifid state of consciousness
    ,('85201', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness
    ,('85250', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, unspecified state of consciousness
    ,('85251', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with no loss of consciousness
    ,('85252', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85253', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85254', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85255', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85256', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration
    ,('85259', 'hemorrhagic') -- Extradural hemorrhage following injury with open intracranial wound, with concussion, unspecified
    ,('85300', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness
    ,('85301', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness
    ,('85302', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85303', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85304', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre- existing conscious level
    ,('85305', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85306', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration
    ,('85309', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified
    ,('85310', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, unspecified state of consciousness
    ,('85311', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with no loss of consciousness
    ,('85312', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85313', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85314', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85315', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85316', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration
    ,('85319', 'hemorrhagic') -- Other and unspecified intracranial hemorrhage following injury with open intracranial wound, with concussion, unspecified
    ,('85202', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85203', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85204', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85205', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85206', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration
    ,('85209', 'hemorrhagic') -- Subarachnoid hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified
    ,('85210', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, unspecified state of consciousness
    ,('85211', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with no loss of consciousness
    ,('85212', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85213', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85214', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours) loss of consciousness and return to pre-existing conscious level
    ,('85215', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85216', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration
    ,('85219', 'hemorrhagic') -- Subarachnoid hemorrhage following injury with open intracranial wound, with concussion, unspecified
    ,('85220', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness
    ,('85221', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness
    ,('85222', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85223', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85224', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85225', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85226', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration
    ,('85229', 'hemorrhagic') -- Subdural hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified
    ,('85230', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, unspecified state of consciousness
    ,('85231', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with no loss of consciousness
    ,('85232', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with brief [less than one hour] loss of consciousness
    ,('85233', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85234', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85235', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85236', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with loss of consciousness of unspecified duration
    ,('85239', 'hemorrhagic') -- Subdural hemorrhage following injury with open intracranial wound, with concussion, unspecified
    ,('85240', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness
    ,('85241', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness
    ,('85242', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with brief [less than 1 hour] loss of consciousness
    ,('85243', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with moderate [1-24 hours] loss of consciousness
    ,('85244', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness and return to pre-existing conscious level
    ,('85245', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level
    ,('85246', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with loss of consciousness of unspecified duration
    ,('85249', 'hemorrhagic') -- Extradural hemorrhage following injury without mention of open intracranial wound, with concussion, unspecified
    -- ,'99702'    -- Iatrogenic cerb hemorrhage or infarct
    -- ,'4350'	    -- Basilar artery syndrome
    -- ,'4351'	    -- Vertebral artery syndrome
    -- ,'4352'	    -- Subclavian steal syndrome
    -- ,'4353'	    -- Vertebrobasilar artery syndrome
    -- ,'4358'	    -- Other specified transient cerebral ischemias
    -- ,'4359'	    -- Unspecified transient cerebral ischemia
    -- -- obstructive hydrocephalus (?)
    -- -- extracranial occlusion (?)
    -- -- undefined inchemia (?)
