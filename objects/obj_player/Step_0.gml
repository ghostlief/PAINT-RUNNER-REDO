/// @desc Core player logic

// get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space); 

// calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

x = x + hsp;

vsp = vsp + grv;

//jump
if (place_meeting(x, y+1, obj_wall)) 
{
	currJumps = 0;
}

if (key_jump && (currJumps < maxJumps))
{
	vsp = -jumpsp;
	currJumps += 1;
}

// Horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
//if (hsp != 0) image_xscale = sign(hsp);