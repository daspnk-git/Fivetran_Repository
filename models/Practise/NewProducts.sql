with NP as(
    select product_name, new_vs_refill
     from {{ source('fivetran_database_dbt_default_schema', 'CLEANSED_PRESCRIPTION_PRACTISE') }}
     where new_vs_refill = '{{ var('NR') }}'
),

final as (
    select * from NP
)
select * from final