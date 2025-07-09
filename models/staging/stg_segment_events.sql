select
  user_id,
  event_type,
  event_time::timestamp
from {{ source('segment', 'segment_events') }}