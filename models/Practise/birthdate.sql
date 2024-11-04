with birthdate as(
    select Prescribing_doctor as Doctor,
     AGE , 
     {{ ref('dob')}} as dob
     from {{ source('fivetran_database_dbt_default_schema', 'CLEANSED_PRESCRIPTION_PRACTISE') }}
),

final as (
    select * from birthdate
)

select * from final