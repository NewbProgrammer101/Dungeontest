--Orc by NewbProgrammer or roboto
mobs:register_mob("mobs:orc", {
	type = "monster",
	passive = false,
	hp_min = 20,
	hp_max = 21,
	armor = 300,
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	mesh = "character.b3d",
	visual = "mesh",
	drawtype = "front",
	textures = "orc.png",
	makes_footstep_sound = true,
	sounds = {}
	walk_velocity = 10,
	run_velocity = 12,
	jump = true,
	drops = {
		{name = "mobs:orc_corpse", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 10,
	light_damage = 5,
	view_range = 10,
	fear_height = 10,
	animation = {
		speed_normal = 30,
		speed_run = 30,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 200,
		punch_end = 219,
	},
})

mobs:spawn({
	name = "mobs:orc",
	nodes = {"default:stonebrick"},
	neighbors = {"dungeon_rooms:wall"},
	min_light = 10,
	chance = 10000,
	active_object_count = 1,
	min_height = -31000,
	day_toggle = true,
})

mobs:register_egg("mobs:orc", S("Orc"), "default_stone_brick.png", 1)
