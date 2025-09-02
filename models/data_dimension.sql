with cte as (
    select started_at
    from {{ source('DEMO', 'BIKE') }}
)

select * from cte;