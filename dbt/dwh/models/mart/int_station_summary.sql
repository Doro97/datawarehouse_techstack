with source_station_summary  as (
  select
    *
  from {{ ref('staging_station_summary') }}
),
source_all_station_data as (
  select
    *
  from {{ ref('staging_all_stations_data') }}
),

final as (
    select * from source_all_station_data
)

select * from final