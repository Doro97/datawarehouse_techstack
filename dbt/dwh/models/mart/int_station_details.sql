select * 
from {{ ref('staging_stations_details') }}
where ID=316678

