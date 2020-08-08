
local S = mobs.intllib


-- Mammoth by R3R3R3

mobs:register_mob("mobs_animal:mammoth", {
	type = "monster",
	passive = false,
        lifetimer = 60 * 60 * 24,
	attack_type = "dogfight",
	attack_npcs = false,
	reach = 5.5,
	damage = 75,
	hp_min = 250,
	hp_max = 250,
	armor = 500,
	collisionbox = {-1, -0.01, -1, 1.5, 4, 1.5},
	selectionbox = {-4.5, -0.01, -4.5, 4.5, 5.5, 4.5},
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
	run_velocity = 4,
	jump = true,
	jump_height = 6,
	pushable = false,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 50, max = 50},
		{name = "mobs:leather", chance = 1, min = 50, max = 50}
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
                punch_speed = 25,

                die_start = 160,
                die_end = 200,
                die_speed = 10,
                die_loop = false
	},
        attack_animals = false,
        attack_monster = false,
        attack_npcs = false,
        attack_players = true,
	view_range = 16,
	fear_height = 8,
})


mobs:spawn({
	name = "mobs_animal:mammoth",
	nodes = {
           "default:dirt_with_grass", "ethereal:green_dirt",
           "default:permafrost", "default:snow", "default:dirt_with_dry_grass"
        },
	neighbors = {
           "group:grass", "default:dirt_with_snow", "default:permafrost",
           "default:dirt_with_dry_grass"
        },
	min_light = 14,
	interval = 60,
        -- 2000 approx. equals one spawn per minute per player
        -- we want about 2 mammoth spawns per player-day
        -- 2000 * 60 * 12 = 1440000
	chance = 1440000,
	min_height = 5,
	max_height = 200,
	day_toggle = nil,
})


mobs:register_egg("mobs_animal:mammoth", S("Mammoth"), "mobs_cow_inv.png")
