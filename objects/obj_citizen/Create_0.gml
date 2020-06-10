/// @description Insert description here
// You can write your code in this editor
randomize()
sx = irandom(x+300)-x
sy = irandom(y+300)-y
while(collision_point(sx,sy,obj_water,false,false) != noone)
{
	randomize()
	sx = irandom(x+300)-x
	sy = irandom(y+300)-y
}
spd = 0.25
//alarm[0] = 10
path = path_add()
mp_grid_path(global.lnd,path,x,y,sx,sy,false)
path_start(path,0.25,path_action_stop,false)
