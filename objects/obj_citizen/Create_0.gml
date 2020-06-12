/// @description Insert description here
// You can write your code in this editor
randomize()
occupation = choose(1, 2) // 1: settler 2: trader
if occupation == 1
{
	sx = irandom(room_width-20)+10
	sy = irandom(room_height-20)+10
	path = path_add()
	mp_grid_path(global.lnd,path,x,y,sx,sy,false)
	while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)
	{
		randomize()
		sx = irandom(room_width-20)+10
		sy = irandom(room_height-20)+10
	}
	spd = 0.10
	//alarm[0] = 10
	name = scr_cng(irandom(1)+3)
	path_start(path,spd,path_action_stop,false)
}
if occupation == 2
{
		
}