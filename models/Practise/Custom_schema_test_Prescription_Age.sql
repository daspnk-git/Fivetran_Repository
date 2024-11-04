with source_prescription as (
    select * from {{ source('fivetran_database_dbt_default_schema', 'CLEANSED_PRESCRIPTION_PRACTISE') }}
),

final as (
    select * from source_prescription
)
select * from final