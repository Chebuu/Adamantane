-- D_ITEMS.ITEMID
-- 198 GCS Total
-- 723 GCSVerbal
-- 454 GCSMotor
-- 184 GCSEyes
-- 223900 GCS - Verbal Response
-- 223901 GCS - Motor Response
-- 220739 GCS - Eye Opening

-- 227011	"GCSEye_ApacheIV"
-- 227012	"GCSMotor_ApacheIV"
-- 227014	"GCSVerbal_ApacheIV"
-- 228112	"GCSVerbalApacheIIValue (intubated)"
-- 226756	"GCSEyeApacheIIValue"
-- 226757	"GCSMotorApacheIIValue"
-- 226758	"GCSVerbalApacheIIValue"

select
    c.row_id,
    c.subject_id,
    c.hadm_id,
    c.icustay_id,
    c.itemid,
    c.value,
    c.valuenum,
    c.charttime,
    c.warning,
    c.error,
    c.stopped,
    case when c.itemid in (723,223900) then 1 else 0 end as GCSVerb,
    case when c.itemid in (454,223901) then 1 else 0 end as GCSMoto,
    case when c.itemid in (184,220739) then 1 else 0 end as GCSEyes,
    case when c.itemid in (723, 223900) and c.VALUE in ('1.0 ET/Trach', 'No Response-ETT') then 1 else 0 end as ETTFlag
  from mimiciii.CHARTEVENTS c 
  where 
    c.itemid in (184, 454, 723, 223900, 223901, 220739) and
    c.valuenum is not NULL
  order by c.subject_id, c.charttime
  