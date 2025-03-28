/// Runs when player collides with paint can

with (other)
{
	if (image_index == 0) {
		with(other) {
			image_blend = make_color_rgb(255, 0, 0);
			instance_destroy(other);
		}
	}
	if (image_index == 1) {
		with(other) {
			image_blend = make_color_rgb(0, 255, 0);
			instance_destroy(other);
		}
	}
}