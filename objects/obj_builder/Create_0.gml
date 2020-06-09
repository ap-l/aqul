/// @description Insert description here
// You can write your code in this editor
	ncity = instance_furthest(x,y,obj_city)
	path = path_add()
	grid = mp_grid_create(min(x,ncity.x),min(y,ncity.y),abs(x-ncity.x),abs(y-ncity.y),8,8)
	mp_grid_add_instances(grid,obj_water,false)
	mp_grid_add_instances(grid,obj_mountain,false)
	mp_grid_path(grid,path,x,y,ncity.x,ncity.x,false)
	alarm[0] = 200