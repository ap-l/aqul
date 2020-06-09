/// @description Insert description here
// You can write your code in this editor
randomize()
alarm[0] = irandom_range(400,800)
instance_create_depth(x,y,-1,obj_citizen)
if instance_number(obj_city) > 1
{
	ncity = instance_nearest(x,y,obj_city)	
	p1 = path_add()
	grid = mp_grid_create(min(x,ncity.x),min(y,ncity.y),abs(x-ncity.x),abs(y-ncity.y),8,8)
	mp_grid_add_instances(grid,obj_water,false)
	mp_grid_add_instances(grid,obj_mountain,false)
	mp_grid_path(grid,p1,x,y,ncity.x,ncity.x,false)
}
if instance_exists(obj_house)
{
		
}