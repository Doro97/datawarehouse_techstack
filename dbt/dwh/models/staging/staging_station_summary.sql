with source_station_summary as (
   select * from {{ source('stations_data','station_summary') }}
),

final as (
    select * from source_station_summary
)

select * from final