/// @description Insert description here
// You can write your code in this editor
	for(var i = instance_number(obj_city); i>0; i--)
	{
		
	}
	//ncity = instance_furthest(x,y,obj_city)
	if ds_list_find_index(global.roadlist,instance_nearest(x,y,obj_city).cname + ncity.cname) == -1
	{
		ds_list_add(global.roadlist,instance_nearest(x,y,obj_city).cname + ncity.cname)
		path = path_add()
		grid = mp_grid_create(min(x,ncity.x),min(y,ncity.y),abs(x-ncity.x) / global.gridsz + 1,abs(y-ncity.y) / global.gridsz + 1,global.gridsz,global.gridsz)
		mp_grid_add_instances(grid,obj_water,false)
		//mp_grid_add_instances(grid,obj_mountain,false)
		var t = mp_grid_path(grid,path,x,y,ncity.x,ncity.y,false)
		show_debug_message(t)
		alarm[0] = 200
		var inc = 1 / (path_get_length(path));
		var pos = 0;
		// Loop through every position along the path 1 pixel at a time
		while (pos < 1) 
		{
		  var px = path_get_x(path, pos);
		  var py = path_get_y(path, pos);
		  px = round(px / global.gridsz)  * global.gridsz;  // Round px to the nearest grid_width (for example if grid_width = 32, and px = 69 it px would become 64 because thats the nearest multiple of 32)
		  py = round(py / global.gridsz) * global.gridsz; // Round py to the nearest grid_height

		  // Create object if one doesn't already exist (important because this code will run many times for each grid position because there are multiple pixels along the path that fall into a single grid position)
		  if (!collision_point(px, py, obj_road, 0, 0)) 
		  {
		    instance_create_depth(px, py,-1, obj_road);
			show_debug_message(pos)
			show_debug_message(path_get_length(path))
			show_debug_message(inc)
		  }
		  pos += inc;
		}
	}