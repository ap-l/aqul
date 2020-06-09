/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

var vm = matrix_build_lookat(x,y,-1,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(100,100,1,10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera

follow = obj_player;
