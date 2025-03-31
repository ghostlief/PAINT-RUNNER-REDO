/// changes room
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		
		case rm_end:
	
	}
}

if (global.keys == 2)
{
	switch(room){
		case rm_game:
			room_goto(rm_end);
}
}