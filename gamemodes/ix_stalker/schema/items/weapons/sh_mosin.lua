ITEM.name = "Mosin Nagant"
ITEM.description= "An old bolt action rifle mostly made out of wood. Fires 7.62x54mm."
ITEM.longdesc = "The Mosin Nagant is an old bolt action design with it's origins in the Russian Empire, 1891.\nIt was used extensively as the official service rifle for multiple states and remains in arsenals of guerillas and other formations that needs to utilize a reliable, powerful and cheap rifle.\nIt's especially popular with the hunters in the Zone as the large bullet takes a wild animal out in a single shot.\nVery devastating towards unarmored personnel and personnel in armor alike, with the right ammunition.\n\nAmmo: 7.62x54mm\nMagazine Capacity: 5"
ITEM.model = ("models/weapons/ws mosin/w_ws_mosin.mdl")
ITEM.class = "cw_ws_mosin"
ITEM.weaponCategory = "primary"
ITEM.price = 26000
ITEM.width = 6
ITEM.height = 1
--ITEM.busflag = {"ARMS2_4_1", "SPECIAL6_1"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_microt1","md_eotech","md_aimpoint","md_cmore","md_schmidt_shortdot","md_acog","md_nightforce_nxs","md_pso1","md_reflex","md_pbs1"}

ITEM.iconCam = {
	pos = Vector(11, -205, -0.5),
	ang = Angle(0, 90, 0),
	fov = 15,
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
						["Angles"] = Angle(74.21875, -177.46875, -96.1875),
						["Position"] = Vector(-7.678, -3.941, 7.315),
						["Model"] = "models/weapons/ws mosin/w_ws_mosin.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "8542553421",
						["Bone"] = "chest",
						["Name"] = "mosin",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1234453672",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_ws_mosin@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "8235351483",
		["EditorExpand"] = true,
	},
},
}