ITEM.name = "Nuts"
ITEM.description = "A bunch of metal nuts."
ITEM.longdesc = ""
ITEM.model = "models/illusion/eftcontainers/nuts.mdl"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 23

ITEM.quantity = 20

ITEM.flatweight = 0
ITEM.weight = 0.008

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(67.915367126465, 56.987754821777, 42.328720092773),
	ang = Angle(25, 220, 0),
	fov = 3,
}

function ITEM:GetPrice()
	return self.price * self:GetData("quantity", self.quantity)
end

ITEM.functions.combine = {
	OnCanRun = function(item, data)
		if !data then
			return false
		end
		local targetItem = ix.item.instances[data[1]]

		if targetItem.uniqueid == item.uniqueid then
			return true
		else
			return false
		end
	end,
	OnRun = function(item, data)
		local targetItem = ix.item.instances[data[1]]
		local targetQuantDiff = targetItem.quantity - targetItem:GetData("quantity", targetItem.quantity)
		local localQuant = item:GetData("quantity", item.quantity)
		local targetQuant = targetItem:GetData("quantity", targetItem.quantity)
		item.player:EmitSound("stalkersound/inv_properties.mp3", 110)
		if targetQuantDiff >= localQuant then
			targetItem:SetData("quantity", targetQuant + localQuant)
			return true
		else
			item:SetData("quantity", localQuant - targetQuantDiff)
			targetItem:SetData("quantity", targetItem.quantity)
			return false
		end
	end,
}