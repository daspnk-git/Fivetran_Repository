with cleansed_product_practise as(
    select * from FIVETRAN_DATABASE.CLEANSED.CLEANSED_PRODUCT
),

final as(
    select * from cleansed_product_practise
)

select * from final