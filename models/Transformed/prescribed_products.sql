
with prd_pres as(
select
cps.PRESCRIPTION_ID,
cps.PRESCRIBING_DOCTOR,
cps.NEW_VS_REFILL,
cps.PRODUCT_NAME,
cps.VOLUME_UNITS,
cps.age,
cps.gender,
cpd.PRODUCT_ID,
cpd.THERAPEUTIC_AREA,
cpd.COMPANY,
cpd.BRAND_TYPE,
cpd.DOSAGE_FORM,
cpd.LAUNCH_DATE
from fivetran_database.cleansed.cleansed_prescription cps 
join fivetran_database.cleansed.cleansed_product cpd
on cps.product_name=cpd.product_name) ,

final as (
select * from prd_pres
)

select * from final