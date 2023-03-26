with cte as (select generate_series(0,100) val),
grid as (select c1.val x, c2.val y from cte c1 join cte c2 on true)
select 
grid.x,
grid.y,
polygons.polygon_name,
polygons.polygon_id,
polygon_states.state
from grid 
left join polygons on grid.x between polygons.x_from and polygons.x_to and grid.y between polygons.y_from and polygons.y_to and picture_name = 'Plane'
left join polygon_states on polygons.polygon_id = polygon_states.polygon_id;
