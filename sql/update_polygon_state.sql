update polygon_states
set state = 'ok'
from polygons 
where polygon_states.polygon_id = polygons.polygon_id
and polygons.polygon_name = 'Door'
and polygons.picture_name = 'House'
;
