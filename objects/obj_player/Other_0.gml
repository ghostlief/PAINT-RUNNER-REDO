/// Trigger room restart
if (bbox_top > room_height) {
	instance_destroy();
	alarm[0] = room_speed;
}
