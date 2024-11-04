with teams as (
    select * from {{ ref ('Teams') }}
),
final as (
    select * from teams
)
select * from final