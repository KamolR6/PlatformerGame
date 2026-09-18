var pl = instance_nearest(x, y, obj_gracz)
var on_top = false

if (pl != noone)
{
	var overlap_x = pl.bbox_right > bbox_left and pl.bbox_left < bbox_right
	var rising = pl.y < pl.yprevious - 0.5
	var feet_diff = pl.bbox_bottom - bbox_top
	var prev_bottom = pl.yprevious + (pl.bbox_bottom - pl.y)

	// Player counts as standing if their feet were above the crate last frame
	if (overlap_x and !rising and prev_bottom <= bbox_top + 1 and feet_diff >= -1) on_top = true

	if (on_top)
	{
		pl.y += bbox_top - 1 - pl.bbox_bottom

		// Stops gravity from piling up while standing
		if (pl.vspeed > 0) pl.vspeed = 0
	}
}
standing = on_top

// Side pushing only applies when the player is not standing on the crate
var p = noone
if (!on_top)
{
	p = instance_place(x - 2, y, obj_gracz)
	if (p == noone) p = instance_place(x + 2, y, obj_gracz)

	// Feet near the top edge means standing, not pushing
	if (p != noone)
	{
		if (p.bbox_bottom <= bbox_top + 4) p = noone
	}
}

if (p != noone)
{
	var dir = sign((bbox_left + bbox_right) / 2 - (p.bbox_left + p.bbox_right) / 2)
	if (dir == 0) dir = 1

	var moved = (p.x - p.xprevious) * dir

	if (moved > 0)
	{
		var slow = push_slow * power(image_xscale, scale_power)
		var mult = clamp(1 / (1 + slow), 0.1, 1)

		// Crate moves in whole pixels, leftover fractions are saved for the next frame
		push_remainder += moved * mult
		var steps = floor(push_remainder)
		push_remainder -= steps

		var done = 0
		repeat (steps)
		{
			if (place_meeting(x + dir, y, obj_parent_wall))
			{
				push_remainder = 0
				break
			}
			x += dir
			done++
		}

		// Player only moves as far as the crate did, this is what slows them down
		p.x = p.xprevious + dir * done
	}

	// Safety: push the player out if they ended up inside the crate
	var guard = 0
	while (place_meeting(x, y, p) and guard < 64)
	{
		p.x -= dir
		guard++
	}
}
else
{
	push_remainder = 0
}