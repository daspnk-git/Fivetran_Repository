with PRESC as 
(select * from FIVETRAN_DATABASE.RAW.PRESCRIPTION)

select 
 PRESCRIPTION_ID
,PRESCRIBING_DOCTOR
,NEW_VS_REFILL
,PRODUCT_NAME
,VOLUME_UNITS_ as VOLUME_UNITS
,split_part(split(PATIENT_DEMOGRAPHICS,',')[0],':',2) as age
,split_part(split(PATIENT_DEMOGRAPHICS,',')[1],':',2) as gender
from presc