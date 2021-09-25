with source_station_summary  as (
  select
    *
  from {{ ref('int_station_summary') }}
),
source_all_station_data as (
  select
    *
  from {{ ref('int_station_details') }}
)