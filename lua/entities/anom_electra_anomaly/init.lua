AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

hook.Add( "OnDamagedByExplosion", "DisableSound", function()
	return true
end )

sound.Add( {
	name = "electra_idle",
	channel = CHAN_STATIC,
	volume = 0.3,
	level = 70,
	pitch = 100,
	sound = "anomaly/electra_idle1.wav"
} )

sound.Add( {
	name = "electra_blast",
	channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitch = 100,
	sound = "anomaly/electra_blast1.mp3"
} )

function ENT:Initialize()
	self:SetModel("models/props_junk/watermelon01.mdl")

	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)  
	self:SetSolid(SOLID_BBOX)	
	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
	self:SetName("Electra Anomaly")
	self:SetTrigger(1)
	self:SetCollisionBounds( Vector( -60, -60, -5 ), Vector( 60, 60, 80 ) )
	self:SetNWBool("StopParticle", false)
	self:SetRenderMode( RENDERMODE_TRANSTEXTURE ) 
	self:SetColor(Color(0,0,0,0))

    local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Sleep()
		phys:EnableMotion(false)
	end
end

function ENT:StartTouch(ent)
	timer.Create("electra_activated_once"..self:EntIndex(), 0.01, 1, function()
		self:EmitSound("electra_blast")
		ParticleEffect( "electra_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 200, 110)
		ent:TakeDamage(70, self, self)
		if IsValid(ent) and ent:IsRagdoll() then
			ent:Remove()
		end
		self:StopParticles()
		self:SetNWBool("StopParticle", true)
		self:StopSound("electra_idle")
	end)	
	timer.Create("electra_recharge"..self:EntIndex(), 1.95, 0, function()
		self:SetNWBool("StopParticle", false)
	end)
	timer.Create("electra_activated"..self:EntIndex(), 2.0, 0, function()
		self:EmitSound("electra_blast")
		self:StopSound("electra_idle")
		ParticleEffect( "electra_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 200, 110)
		ent:TakeDamage(70, self, self)
		if IsValid(ent) and ent:IsRagdoll() then
			ent:Remove()
		end
		self:SetNWBool("StopParticle", true)
		self:StopParticles()
	end)
end

function ENT:EndTouch()
	timer.Stop("electra_activated"..self:EntIndex())
	timer.Stop("electra_recharge"..self:EntIndex())
	self.Timer = "electra_" .. self:EntIndex()
	timer.Create( self.Timer, 1.9, 1, function()
		self:SetNWBool("StopParticle", false)
		self:SetNWBool("Activated", false)
	end)
end

function ENT:SpawnFunction( ply, tr, ClassName, activator )
	if ( !tr.Hit ) then return end
	local SpawnPos = tr.HitPos + Vector(0, 0, 4)
	local SpawnAng = tr.HitNormal:Angle()
	SpawnAng.p = SpawnAng.p +90
	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:SetAngles( SpawnAng )
	ent:Spawn()
	ent:Activate()
	ent:SetTrigger( 1 )
	
	return ent
end

function ENT:OnRemove()
	self.Timer = "electra_" .. self:EntIndex()
	self.Timer = "electra_activated" .. self:EntIndex()
	self:StopSound("electra_idle")
	timer.Stop(self.Timer)
end