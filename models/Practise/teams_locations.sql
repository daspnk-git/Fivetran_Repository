with teams as (
    select * from {{ ref ('Teams.csv') }}
),
final as (
    select * from teams
)
select * from final