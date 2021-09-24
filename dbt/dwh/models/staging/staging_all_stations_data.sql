with source as (
  select * from {{ ref('all_stations_data') }}
),

stage_all_stations_data as (
  select
    timestamp,
    id,
    flow1,
    occupancy1,
    mph1,
    flow2,
    occupancy2,
    mph2,
    flow3,
    occupancy3,
    mph3,
    flow4,
    occupancy4,
    mph4,
    flow5,
    occupancy5,
    mph5,
    totalflow
  from source
)
select
  *
from stage_all_stations_data