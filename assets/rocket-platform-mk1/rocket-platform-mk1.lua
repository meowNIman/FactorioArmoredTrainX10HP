------------
--- ITEM ---
------------
data:extend
({
	{
		type = "item",
		name = "rocket-platform-mk1",
		icon = "__Armored-trainX10HP__/assets/rocket-platform-mk1/rocket-platform-mk1-icon.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "transport",
		order = "a[train-system]-l[platform_mk1_01]",
		place_result = "rocket-platform-mk1",
		stack_size = 5
	}
})
	
	
	
--------------
--- RECIPE ---
--------------
data:extend
({
	{
		type = "recipe",
		name = "rocket-platform-mk1",
		enabled = false,							-- default state (not researched)
		ingredients =
		{
			{"iron-plate", 20},			
			{"steel-plate", 20},
			{"iron-gear-wheel", 10},				
			{"engine-unit", 15},
			{"electronic-circuit", 20}			-- Unique
		},
		result = "rocket-platform-mk1"
	}
})



--------------
--- ENTITY ---
--------------
-- Deep copy base data and create new one with custom parametres
local l_rocket_platform_mk1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
l_rocket_platform_mk1.name = "rocket-platform-mk1"
l_rocket_platform_mk1.icon = "__Armored-trainX10HP__/assets/rocket-platform-mk1/rocket-platform-mk1-icon.png"
l_rocket_platform_mk1.icon_size = 64
l_rocket_platform_mk1.icon_mipmaps = 4
-- Inventory
l_rocket_platform_mk1.inventory_size = 0					-- Do not need inventory
l_rocket_platform_mk1.minable = 
{
	mining_time = 0.5, 
	result = "rocket-platform-mk1"		
}
l_rocket_platform_mk1.max_health = 10000					-- Same as turret hp (Critical component or will be destroyed using old script)	
l_rocket_platform_mk1.weight = 2000
l_rocket_platform_mk1.energy_per_hit_point = 5
-- Animation
l_rocket_platform_mk1.pictures =
{
	layers =
	{
		{
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = false,    			--means to not rotate mirroring
			direction_count = 128, 					--means to add aditional frames
			allow_low_quality_rotation = true,
			line_length = 32,
			lines_per_file = 1,
			shift = {0.4, -1.25},
			filenames =
			{
				"__Armored-trainX10HP__/assets/rocket-platform-mk1/sprites/platform-mk1-01.png",
				"__Armored-trainX10HP__/assets/rocket-platform-mk1/sprites/platform-mk1-02.png",
				"__Armored-trainX10HP__/assets/rocket-platform-mk1/sprites/platform-mk1-03.png",
				"__Armored-trainX10HP__/assets/rocket-platform-mk1/sprites/platform-mk1-04.png"
			}
		}
	}
}
l_rocket_platform_mk1.horizontal_doors = nil
l_rocket_platform_mk1.vertical_doors = nil
-- Minimap representation
l_rocket_platform_mk1.minimap_representation =
{
	filename = "__Armored-trainX10HP__/assets/rocket-platform-mk1/rocket-platform-mk1-minimap-representation.png",
	flags = {"icon"},
	size = {20, 40},
	scale = 0.5
}
l_rocket_platform_mk1.selected_minimap_representation =
{
	filename = "__Armored-trainX10HP__/assets/rocket-platform-mk1/rocket-platform-mk1-selected-minimap-representation.png",
	flags = {"icon"},
	size = {20, 40},
	scale = 0.5
}

-- Write result
data:extend
({
	l_rocket_platform_mk1
})
