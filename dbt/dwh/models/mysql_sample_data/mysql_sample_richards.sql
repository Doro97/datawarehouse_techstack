with source_richards as (
   select * from {{ source('test','richards') }}
),

final as (
    select * from source_richards
)

select * from final
