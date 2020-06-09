/// @description Insert description here
// You can write your code in this editor
randomize()
alarm[0] = irandom_range(400,800)
instance_create_depth(x,y,-2,obj_citizen)
if instance_number(obj_city) > 1 && br == true
{
	instance_create_depth(x,y,-2,obj_builder)
	br = false
}
