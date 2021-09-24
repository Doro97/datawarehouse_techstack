with source as (
  select * from {{ ref('stations_summary') }}
),

stage_stations_summary as (
  select
    ID,
    flow_99,
    flow_max,
    flow_median,
    flow_total,
    n_obs
  from source
)
select
  *
from stage_station_summary