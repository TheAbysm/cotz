ITEM.name = "Binoculars"
ITEM.description = "Standard Ukrainian-issue military binoculars with maximum magnification of x7.5. Useful in the Zone in that they allow its owner to observe things from a distance. Very durable."
ITEM.model = "models/weapons/w_binos.mdl"
ITEM.class = "m9k_ww2artillery"
ITEM.weaponCategory = "binocularslot"
ITEM.price = 225
--ITEM.busflag = {"MERCH4", "SPECIAL6"}
ITEM.busflag = {"hardware1"}
ITEM.height = 1
ITEM.width = 2
ITEM.category = nil
ITEM.canAttach = false
ITEM.repairCost = ITEM.price/100*1
ITEM.img = Material("vgui/hud/binoculars.png")
ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(0, -90, 180),
						["Position"] = Vector(-7.19, 15.053, -8.188),
						["Model"] = "models/weapons/w_binos.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "7979294673",
						["Bone"] = "pelvis",
						["Name"] = "binoculars",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1234486522",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "m9k_ww2artillery@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "2212796348",
		["EditorExpand"] = true,
	},
},
}