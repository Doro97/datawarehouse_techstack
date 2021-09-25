with source_station_details as (
   select * from {{ source('stations_data','i80_stations_details') }}
),

final as (
    select * from source_station_details
)

select * from final
