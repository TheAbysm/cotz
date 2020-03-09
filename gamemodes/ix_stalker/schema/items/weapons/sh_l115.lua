ITEM.name = "L115"
ITEM.description= "A military sniper rifle. Fires .338 Lapua."
ITEM.longdesc = "The L115, also known as the Artic Warfare Magnum is one of the most desirable sniper rifles in the Zone.\nIt fires the .338 Lapua bullet, boasting immense damage against even the most armored targets and effective ranges of up to 1500 meters.\n\nAmmo: .338 Lapua Magnum\nMagazine Capacity: 5"
ITEM.model = "models/weapons/w_cstm_l96.mdl"
ITEM.class = "cw_l115"
ITEM.weaponCategory = "primary"
ITEM.width = 6
ITEM.price = 115000
ITEM.height = 2
ITEM.flag = "0"
ITEM.repairCost = ITEM.price/100*1

ITEM.canAttach = false
ITEM.iconCam = {
	pos = Vector(-14.5, 34, 1),
	ang = Angle(0, 270, 0),
	fov = 70
}
ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(0, 180, 180),
						["Position"] = Vector(16.218, -4.315, -2.859),
						["Model"] = "models/weapons/w_cstm_l96.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "7946869091",
						["Bone"] = "spine 2",
						["Name"] = "l115",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1237786422",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_l115@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "2784946348",
		["EditorExpand"] = true,
	},
},
}