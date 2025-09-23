
if(!guy_eaten && instance_exists(target))
{
	image_xscale = sign(target.x - x)
}

if(!guy_eaten && instance_exists(target) && point_distance(x, y, target.x, target.y) <= 32)
{
	guy_eaten = true
	sprite_index = fish_spr_pickler_eat
	image_index = 0
	instance_destroy(host)
	instance_destroy(fish_obj_herbert)
	
	audio_play_sound(fish_chomp_bite_pickle_fun, 10, false, 1, 0, .3)
}