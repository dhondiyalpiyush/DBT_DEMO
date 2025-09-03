with cte as (
    select to_timestamp(started_at) as started_time,
    date(started_time) as date_started_at,
    hour(started_time) as hour_started_at,
    {{dayweek('started_at')}} as day_type,
    
    {{station('started_at')}} as station_of_year

    from {{ source('demo', 'bike') }}
    where started_at != 'started_at'
)

select * from cte