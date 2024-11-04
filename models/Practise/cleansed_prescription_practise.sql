with cleansed_pres_practise as(
    select * from FIVETRAN_DATABASE.CLEANSED.CLEANSED_PRESCRIPTION
),

final as(
    select * from cleansed_pres_practise
)

select * from final