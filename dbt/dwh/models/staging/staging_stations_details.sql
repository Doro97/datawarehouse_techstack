with source as (
  select * from {{ ref('stations_details') }}
),

stage_stations_details as (
  select
    ID,
    Dir,
    District,
    County,
    City,
    State_PM,
    Abs_PM,
    Latitude,
    Longitude,
    stLength,
    stType,
    Lanes,
    stName,
    User_ID_1,
    User_ID_2,
    User_ID_3,
    User_ID_4
  from source
)
select
  *
from stage_stations_details