//instance_create_layer(64, 672, "Instances", obj_player);

instance_create_layer(1024, 480, "Instances", obj_keys);


//instance_create_layer(528, 608, "Instances", obj_paint);
var red = instance_create_layer(528, 608, "Instances", obj_paint,
{
    image_index : 0
});

var green = instance_create_layer(399, 396, "Instances", obj_paint,
{
    image_index : 1
});

with (obj_game)
{
	move_towards_point(obj_player.x, obj_player.y, 5);	
}