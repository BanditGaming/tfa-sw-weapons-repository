if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end
if ( CLIENT ) then
	SWEP.PrintName			= "T-21B"			
	SWEP.Author				= "TFA, Servius"
	SWEP.ViewModelFOV      	= 50
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
end
SWEP.Base					= "tfa_3dscoped_base"
SWEP.Category = "TFA Blaster Rifles"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_dc15sa.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.UseHands = true
SWEP.Primary.Sound = Sound ("weapons/t21/t21_fire.ogg");
SWEP.Primary.ReloadSound = Sound ("weapons/DC15A_reload.wav");
SWEP.Primary.KickUp			= 2
SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false
SWEP.Primary.Recoil			= 0.4
SWEP.Primary.Damage			= 15
SWEP.Primary.NumShots		= 1
SWEP.Primary.Spread			= 0.015
SWEP.Primary.IronAccuracy = .001	-- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.ClipSize		= 20
SWEP.Primary.RPM            = 100
SWEP.Primary.RPM_Burst = 250
SWEP.Primary.DefaultClip	= 50
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"
SWEP.SelectiveFire		= true --Allow selecting your firemode?
SWEP.DisableBurstFire	= false --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev
SWEP.FireModes = {
"Single",
"2Burst"
}
SWEP.FireModeName = nil --Change to a text value to override it
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-6.08, -4.02, -0.201)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/swbf3/outerrim/weapons/t-21b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.399, 1.399, 1.299), angle = Angle(-170, 177, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.VElements = {
	["element_scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(-1.33, -8.99, -1.61), angle = Angle(90, 180, 90), size = Vector(0.33, 0.33, 0.33), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} },
	["element_name"] = { type = "Model", model = "models/swbf3/outerrim/weapons/t-21b.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, 3, -9.87), angle = Angle(-90, 90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.BlowbackVector = Vector(0,-3,0.025)
SWEP.Blowback_Only_Iron  = false
SWEP.DoProceduralReload = false
SWEP.ProceduralReloadTime = 2.5
----Swft Base Code
SWEP.TracerCount = 1
SWEP.MuzzleFlashEffect = ""
SWEP.TracerName = "effect_sw_laser_red"
SWEP.Secondary.IronFOV = 70
SWEP.Primary.KickUp = 1.5
SWEP.Primary.KickDown = 0.1
SWEP.Primary.KickHorizontal = 0.1
SWEP.Primary.KickRight = 0.1
SWEP.DisableChambering = true
SWEP.ImpactDecal = "FadingScorch"
SWEP.ImpactEffect = "effect_sw_impact" --Impact Effect
SWEP.RunSightsPos = Vector(2.127, 0, 1.355)
SWEP.RunSightsAng = Vector(-15.775, 10.023, -5.664)
SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-3,0.1)
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = ""
SWEP.ThirdPersonReloadDisable=false
SWEP.Primary.DamageType = DMG_SHOCK
SWEP.DamageType = DMG_SHOCK
--3dScopedBase stuff
SWEP.RTMaterialOverride = 0
SWEP.RTScopeAttachment = -1
SWEP.Scoped_3D = true
SWEP.ScopeReticule = "scope/gdcw_vibrantred_nobar" 
SWEP.Secondary.ScopeZoom = 7
SWEP.ScopeReticule_Scale = {2.5,2.5}
SWEP.Secondary.UseACOG			= false	 --Overlay option
SWEP.Secondary.UseMilDot			= false			 --Overlay option
SWEP.Secondary.UseSVD			= false		 --Overlay option
SWEP.Secondary.UseParabolic		= false		 --Overlay option
SWEP.Secondary.UseElcan			= false	 --Overlay option
SWEP.Secondary.UseGreenDuplex		= false		 --Overlay option
if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end
DEFINE_BASECLASS( SWEP.Base )
--[[
SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_dc15sa.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.IronSightsPos = Vector(-6.08, -4.02, -0.201)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.VElements = {
	["element_scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(-1.321, -8.99, -1.601), angle = Angle(90, 180, 0), size = Vector(0.33, 0.33, 0.33), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} },
	["element_name"] = { type = "Model", model = "models/swbf3/outerrim/weapons/t-21b.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, 3, -9.87), angle = Angle(-90, 90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/swbf3/outerrim/weapons/t-21b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.399, 1.399, 1.299), angle = Angle(-170, 177, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
]]
