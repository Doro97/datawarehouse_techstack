with source_all_station_data as (
   select * from {{ source('stations_data','all_station_data') }}
),

final as (
    select * from source_all_station_data
)

select * from final




