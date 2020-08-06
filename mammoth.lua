
local S = mobs.intllib


-- Mammoth by R3R3R3

mobs:register_mob("mobs_animal:mammoth", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	reach = 5.5,
	damage = 75,
	hp_min = 250,
	hp_max = 250,
	armor = 500,
	collisionbox = {-1, -0.01, -1, 1.5, 4, 1.5},
	selectionbox = {-1.5, -0.01, -1.5, 2, 4.5, 2},
	visual = "mesh",
	mesh = "mobs_mammoth.b3d",
	textures = {
		{"mobs_mammoth.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_cow",
	},
	walk_velocity = 1,
	run_velocity = 5,
	jump = true,
	jump_height = 6,
	pushable = false,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 75, max = 99},
		{name = "mobs:leather", chance = 1, min = 40, max = 50}
	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
        visual_size = {
           x = 100,
           y = 100,
        },
	animation = {
		stand_start = 0,
		stand_end = 0,
		stand_speed = 20,

		stand2_start = 1,
		stand2_end = 20,
		stand2_speed = 5,

		walk_start = 40,
		walk_end = 100,
		walk_speed = 20,

		run_start = 40,
		run_end = 100,
		run_speed = 30,

		punch_start = 100,
		punch_end = 160,
                punch_speed = 20,

                die_start = 160,
                die_end = 200,
                die_speed = 10,
                die_loop = false
	},
        attack_animals = false,
        attack_monster = false,
        attack_npcs = false,
        attack_players = true,
	follow = {"farming:wheat", "default:grass_1"},
	view_range = 16,

--	stay_near = {{"farming:straw", "group:grass"}, 10},
	fear_height = 8,
        -- cows grow up after three days
        growup_duration = 60 * 60 * 24 * 3,
        -- growup_duration = 60,
        -- cows feel like breeding after three days
        breed_duration = 60 * 60 * 24 * 3,
        -- breed_duration = 60,
})


mobs:spawn({
	name = "mobs_animal:mammoth",
	nodes = {"default:dirt_with_grass", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
        -- 2000 approx. equals one cow spawn per minute per player
        -- we want one cow spawn per day
        -- 2000 * 60 * 24 = 2880000
        --
        -- Important to note that cows will feel rarer because players won't
        -- fully explore all areas that they load.
	chance = 2880000,
	min_height = 5,
	max_height = 200,
	day_toggle = nil,
})


mobs:register_egg("mobs_animal:mammoth", S("Mammoth"), "mobs_cow_inv.png")
