
-- // Startup Parameters \\ --

if (SERVER) then return end
local version = ("v3 BETA")
local client = ("Rook Scripts "..version)
local ply = LocalPlayer()
local ESPColorStyle = 1
local AimKey = 12
local AimBone = ("ValveBiped.Bip01_Head1")
local AimBoneType = 1
local function UtilityCheck(v)
    if v != ply and v:Alive() and v:IsValid() then
        return true
    else
        return false
    end
end
RookSpamMessages = {}
RookSpamMessages[1] = "Rook Scripts --> steamcommunity.com/sharedfiles/filedetails/?id=1100714215"
RookSpamMessages[2] = "Go get them 'Rook Scripts' on the Workshop for hacks like tax"
RookSpamMessages[3] = "Check out my Mixtape: soundcloud.com/khkgang/angrycoon-lilcoon"
RookSpamMessages[3] = "Get them Rook Scripts while They Hot!"
SizeW = 0.6 * ScrW()
SizeH = 0.6 * ScrH()
CenterX = (ScrW()/2) - SizeW/2
CenterY = (ScrH()/2) - SizeH/2
surface.PlaySound ("buttons/blip1.wav")
MsgC (Color( 220, 220, 220 ), [[








































































'||''|.                   '||          .|'''.|                   ||             .          
 ||   ||    ...     ...    ||  ..      ||..  '    ....  ... ..  ...  ... ...  .||.   ....  
 ||''|'   .|  '|. .|  '|.  || .'        ''|||.  .|   ''  ||' ''  ||   ||'  ||  ||   ||. '  
 ||   |.  ||   || ||   ||  ||'|.      .     '|| ||       ||      ||   ||    |  ||   . '|.. 
.||.  '|'  '|..|'  '|..|' .||. ||.    |'....|'   '|...' .||.    .||.  ||...'   '|.' |'..|' 
                                                                      ||                   
                                                                     ''''                  
Made & Developed by Jay.
	  

	  
In Memory of <CODE BLUE>
																
Even though he is no longer with us, his work will be enjoyed for years on and the knowledge he has taught us will stay with us forever.
Though we didn't see eye to eye, I applaud the work you have done for this community, and enjoyed the projects we shared, however shortlived they may have been.
			  














]])
chat.AddText(Color(0,0,0),"[RookScripts]",Color(0,255,0)," Initialized Successfully.")
chat.AddText(Color(0,0,0),"[RookScripts]",Color(200,200,200)," Type",Color(0,200,200)," rook_menu",Color(200,200,200)," to open the hack menu.")
chat.AddText(Color(0,0,0),"[RookScripts]",Color(200,200,200)," Aimbot is bound to",Color(0,200,200)," B",Color(200,200,200),".")

rook = "Rook_"

-- //Fonts, Materials, Colors\\ --

surface.CreateFont( "HUGETextForHUD", {
	font = "trebuchet18",
	size = 100,
	weight = 500,
	antialias = true
} )
surface.CreateFont( "BigTextForHUD", {
	font = "trebuchet18",
	size = 30,
	weight = 500,
	antialias = true
} )
surface.CreateFont( "SmallTextForHUD", {
	font = "DebugFixed",
	size = 12,
	weight = 500,
	antialias = true
} )
surface.CreateFont( "PlayerInfoText", {
	font = "DebugFixed",
	size = 8,
	weight = 500,
	antialias = true
} )

local blur = Material("pp/blurscreen")
local function DrawBlur(panel, amount)
local x, y = panel:LocalToScreen(0, 0)
local scrW, scrH = ScrW(), ScrH()
	surface.SetDrawColor(255, 255, 255)
	surface.SetMaterial(blur)
	for i = 1, 3 do
		blur:SetFloat("$blur", (i / 3) * (amount or 6))
		blur:Recompute()
		render.UpdateScreenEffectTexture()
		surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
	end
end

-- //AntiCheat Warning\\ --
-- Use: Alerts the user if a server has a QAC or CAC since they can detect this script --

chat.AddText(Color(0,0,0),"[RookScripts]",Color(200,200,200)," Checking for AntiCheats...")
if ( CAC ) or ( cac ) or ( QAC ) or ( qac ) or ( LSAC ) or ( lsac ) then
	chat.AddText(Color(0,0,0),"[RookScripts]",Color(255,0,0)," WARNING! ",Color(200,200,200),"Sophisticated AntiCheat Detected!")
	local Frame = vgui.Create( "DFrame" )
	Frame:SetTitle( "Rook Scripts Anticheat Detector" )
	Frame:SetSize( 300, 100 )
	Frame:Center()
	Frame:MakePopup()
	Frame.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 150 ) )
	DrawBlur(self, 3)
	end
	local Button = vgui.Create( "DButton", Frame )
		Button:SetText( "Emergency Disconnect" )
		Button:SetTextColor( Color( 255, 0, 0 ) )
		Button:SetPos( 75, 50 )
		Button:SetSize( 150, 30 )
		Button.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 250 ) )
	end
	Button.DoClick = function()
		RunConsoleCommand( "disconnect" )
	end
	local x = vgui.Create( "DButton", Frame )
	x:SetText( "X" )
	x:SetTextColor( Color( 255, 255, 255 ) )
	x:SetPos( 265, 0 )
	x:SetSize( 35, 35 )
	x.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
x.DoClick = function()
	Frame:Close()
end
else
	chat.AddText(Color(0,0,0),"[RookScripts]",Color(0,255,0)," No AntiCheats Detected!")
end

-- //Anti Screengrab + FileStealing\\ --
-- Use: As far as I know this makes it hard for Screengrabbing users. Essentially, anytime render.Capture() is called we return blank -- 

function render.Capture()
	return nil
end

function render.CapturePixels()
	return nil
end
local old = file.Read
function file.Read(name, usePath)
    if name == "Rook_Scripts"..version..".lua" then
        return ""
    else
        return old(name, usePath)
    end
end

-- //ConVars\\ --
-- Use: Setting ConVars to allow for custom commands the enable/disable hacks. --

CreateClientConVar(rook.."Aimbot", 0, true, false)
CreateClientConVar(rook.."FOVAimbot", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Friends", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Team", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Through_Walls", 0, true, false)
CreateClientConVar(rook.."AdminList", 0, true, false)
----CreateClientConVar(rook.."TriggerBot", 0, true, false)
----CreateClientConVar(rook.."TriggerBot_Ignore_Friends", 0, true, false)
----CreateClientConVar(rook.."TriggerBot_Ignore_Team", 0, true, false)
CreateClientConVar(rook.."CrossHair", 0, true, false)
CreateClientConVar(rook.."PlayerInfo", 0, true, false)
CreateClientConVar(rook.."2DBoxESP", 0, true, false)
CreateClientConVar(rook.."3DBoxESP", 0, true, false)
CreateClientConVar(rook.."SkeletonESP", 0, true, false)
CreateClientConVar(rook.."EyeTracker", 0, true, false)
CreateClientConVar(rook.."Tracer", 0, true, false)
CreateClientConVar(rook.."HUD", 0, true, false)
CreateClientConVar(rook.."Speedometer", 0, true, false)
CreateClientConVar(rook.."FPSCounter", 0, true, false)
CreateClientConVar(rook.."PropESP", 0, true, false)
CreateClientConVar(rook.."Chams", 0, true, false)
CreateClientConVar(rook.."FlashlightSpam", 0, true, false)
CreateClientConVar(rook.."rainbowphys", 0, true, false)
CreateClientConVar(rook.."EntityESP", 0, true, false)
CreateClientConVar(rook.."BHop", 0, true, false)
CreateClientConVar(rook.."BHop_AC", 0, true, false)
CreateClientConVar(rook.."ThirdPerson", 0, true, false)
CreateClientConVar(rook.."CustomFOV", 0, true, false)
CreateClientConVar(rook.."ChatSpam", 0, true, false)
CreateClientConVar(rook.."ChatSpam_DarkRP", 0, true, false)
CreateClientConVar(rook.."ChatSpam_Admin", 0, true, false)
CreateClientConVar(rook.."Murder", 0, true, false)
local fovslider = CreateClientConVar("FOVSlider", 0, true, false)
local crosshair_r = CreateClientConVar("Crosshair_R", 0, true, false)
local crosshair_g = CreateClientConVar("Crosshair_G", 0, true, false)
local crosshair_b = CreateClientConVar("Crosshair_B", 0, true, false)
local crosshair_a = CreateClientConVar("Crosshair_A", 0, true, false)
local crosshair_size = CreateClientConVar("Crosshair_Size", 0, true, false)
local crosshair_style = CreateClientConVar("Crosshair_Style", 0, true, false)
local espcolor_style = CreateClientConVar("ESPColor_Style", 0, true, false)
local espcolor_r = CreateClientConVar("ESPColor_R", 0, true, false)
local espcolor_g = CreateClientConVar("ESPColor_G", 0, true, false)
local espcolor_b = CreateClientConVar("ESPColor_B", 0, true, false)
local espcolor_a = CreateClientConVar("ESPColor_A", 0, true, false)
local renderdist = CreateClientConVar("RenderDistance", 5000, true, false)

-- //Hacks\\ --
-- Use: Creating the hacks for the menu to use. --

-- FOV Aimbot --

function fovaimbot()
	if GetConVarNumber(rook.."FOVAimbot") == 1 and input.IsButtonDown(AimKey) and ply:IsTyping() == false then
		local FOVtrace = util.GetPlayerTrace( ply )
		local FOVtraceRes = util.TraceLine( FOVtrace )
		if FOVtraceRes.HitNonWorld then
			local target = FOVtraceRes.Entity
			if target:IsPlayer() then
				local targethead = target:LookupBone(AimBone)
				local targetheadpos,targetheadang = target:GetBonePosition(targethead)
				ply:SetEyeAngles((targetheadpos - ply:GetShootPos()):Angle())
			end
		end
	end
end
hook.Add("Think","FOVaimbot",fovaimbot)

-- Chat Spam --

local function chatspamsimpleshit()
	if GetConVarNumber(rook.."ChatSpam") == 1 and GetConVarNumber(rook.."ChatSpam_DarkRP") == 1 then
		ply:ConCommand("say /ooc "..table.Random(RookSpamMessages).." " )
	elseif GetConVarNumber(rook.."ChatSpam") == 1 and GetConVarNumber(rook.."ChatSpam_Admin") == 0 then
		ply:ConCommand("say "..table.Random(RookSpamMessages).." " )
	elseif GetConVarNumber(rook.."ChatSpam") == 1 and GetConVarNumber(rook.."ChatSpam_Admin") == 1 then
		ply:ConCommand("say @"..table.Random(RookSpamMessages).." " )
	end
end
timer.Create("chatspamtimer", .25, 0, chatspamsimpleshit)

-- SkeletonESP --

hook.Add('HUDPaint','SkeletonEsp', function()
	if GetConVarNumber(rook.."SkeletonESP") == 1 then
		for k, v in pairs(player.GetAll()) do
			local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
			if plydistance < renderdist:GetInt() then
				if v != LocalPlayer() and UtilityCheck(v) == true and v:LookupBone('ValveBiped.Bip01_Head1') != nil then
					if ESPColorStyle == 1 then
						surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
					else
						surface.SetDrawColor(team.GetColor(v:Team()))
					end
					rshoulder = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_R_UpperArm') ):ToScreen()
					lshoulder = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_L_UpperArm') ):ToScreen()
					relbow = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_R_Forearm') ):ToScreen()
					lelbow = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_L_Forearm') ):ToScreen()
					lwrist = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_L_Hand') ):ToScreen()
					rwrist = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_R_Hand') ):ToScreen()
					head = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_Head1') ):ToScreen()
					pelvis = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_Pelvis') ):ToScreen()
					rthigh = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_R_Calf') ):ToScreen()
					lthigh = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_L_Calf') ):ToScreen()
					rfoot = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_R_Foot') ):ToScreen()
					lfoot = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_L_Foot') ):ToScreen()
					if rshoulder != novalue then
						surface.DrawLine(rshoulder.x,rshoulder.y,lshoulder.x,lshoulder.y)
						surface.DrawLine(rshoulder.x,rshoulder.y,relbow.x,relbow.y)
						surface.DrawLine(lshoulder.x,lshoulder.y,lelbow.x,lelbow.y)
						surface.DrawLine(relbow.x,relbow.y,rwrist.x,rwrist.y)
						surface.DrawLine(lelbow.x,lelbow.y,lwrist.x,lwrist.y)
						surface.DrawLine(head.x,head.y,pelvis.x,pelvis.y)
						surface.DrawLine(pelvis.x,pelvis.y,rthigh.x,rthigh.y)
						surface.DrawLine(pelvis.x,pelvis.y,lthigh.x,lthigh.y)
						surface.DrawLine(rthigh.x,rthigh.y,rfoot.x,rfoot.y)
						surface.DrawLine(lthigh.x,lthigh.y,lfoot.x,lfoot.y)
					end
				end
			end
		end
	end
end) 

-- EyeTracker --

hook.Add('HUDPaint','EyeTracker', function()
	if GetConVarNumber(rook.."EyeTracker") == 1 then
		for k, v in pairs(player.GetAll()) do
			if v:LookupBone('ValveBiped.Bip01_Head1') != nil then
				local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
				if plydistance < renderdist:GetInt() then
					if v != LocalPlayer() then
						if ESPColorStyle == 1 then
							surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
						else
							surface.SetDrawColor(team.GetColor(v:Team()))
						end
						pstart = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_Head1') ):ToScreen()
						pend = util.TraceLine(util.GetPlayerTrace(v)).HitPos:ToScreen()
						surface.DrawLine(pstart.x,pstart.y,pend.x,pend.y)
					end
				end
			end
		end
	end
end)

-- Tracers --

hook.Add('HUDPaint','Tracer', function()
	if GetConVarNumber(rook.."Tracer") == 1 then
		for k, v in pairs(player.GetAll()) do
			if v:LookupBone('ValveBiped.Bip01_Head1') != nil then
				local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
				if plydistance < renderdist:GetInt() then
					if v != LocalPlayer() then
						if ESPColorStyle == 1 then
							surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
						else
							surface.SetDrawColor(team.GetColor(v:Team()))
						end
						pstart = v:GetBonePosition( v:LookupBone('ValveBiped.Bip01_Head1') ):ToScreen()
						pend = LocalPlayer():GetBonePosition( LocalPlayer():LookupBone('ValveBiped.Bip01_Pelvis') ):ToScreen()
						surface.DrawLine(pstart.x,pstart.y,pend.x,pend.y)
					end
				end
			end
		end
	end
end)

-- Aimbot --

hook.Add( "Think", "ThinkAboutIt", function()
	if AimBoneType == 1 then
		AimBone = ("ValveBiped.Bip01_Head1")
	end
	if AimBoneType == 2 then
		AimBone = ("ValveBiped.Bip01_Neck1")
	end
	if AimBoneType == 3 then
		AimBone = ("ValveBiped.Bip01_Spine")
	end
	if AimBoneType == 4 then
		AimBone = ("ValveBiped.Bip01_L_Forearm")
	end
	if AimBoneType == 5 then
		AimBone = ("ValveBiped.Bip01_R_UpperArm")
	end
	if AimBoneType == 6 then
		AimBone = ("ValveBiped.Bip01_Pelvis")
	end
	if AimBoneType == 7 then
		AimBone = ("ValveBiped.Bip01_L_Calf")
	end
	if AimBoneType == 8 then
		AimBone = ("ValveBiped.Bip01_R_Calf")
	end
	local Target = nil
	local NearestTargetDist = 0
    if GetConVarNumber(rook.."Aimbot") == 1 then
		if input.IsButtonDown(AimKey) and ply:IsTyping() == false then
			for k, v in pairs( player.GetAll() ) do
			if UtilityCheck(v) == true then
					local TargetDist = ( Vector( ply:GetPos() ):Distance( Vector( v:GetPos() ) ) )
					if TargetDist > 0 and TargetDist < NearestTargetDist or NearestTargetDist == 0 then
						if GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 1 and v:IsPlayer() and v:GetFriendStatus() == "none" or GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 0 then 
							if GetConVarNumber(rook.."Aimbot_Ignore_Team") == 1 and v:IsPlayer() and v:Team() ~= ply:Team() or GetConVarNumber(rook.."Aimbot_Ignore_Team") == 0 then 
								NearestTargetDist = TargetDist
								if NearestTargetDist == TargetDist then
									Target = v
								end
								if Target ~= nil then
									if Target:LookupBone(AimBone) == nil then
										local TargetBody = Target:GetPos() + Vector( 0, 0, 35 )
										ply:SetEyeAngles((TargetBody - ply:GetShootPos()):Angle())
									else 
										local TargetHead = Target:LookupBone(AimBone)
										local TargetHeadPos,TargetHeadAng = Target:GetBonePosition(TargetHead)
										ply:SetEyeAngles((TargetHeadPos - ply:GetShootPos()):Angle())
									end
								end
							end
						end
					end
				end
			end
        end
	end
end)
	
--[[-- Trigger Bot --

hook.Add( "Think", "Triggerbot", function()
    local EntTrace = ply:GetEyeTrace().Entity
    if GetConVarNumber(rook.."TriggerBot") == 1 and ( EntTrace:IsPlayer() )  then
		if GetConVarNumber(rook.."TriggerBot_Ignore_Friends") == 1 and v:IsPlayer() and v:GetFriendStatus() == "none" or GetConVarNumber(rook.."TriggerBot_Ignore_Friends") == 0 then 
			if GetConVarNumber(rook.."TriggerBot_Ignore_Team") == 1 and v:IsPlayer() and v:Team() ~= ply:Team() or GetConVarNumber(rook.."TriggerBot_Ignore_Team") == 0 then 
				if shooting and ( EntTrace:IsPlayer() ) then
					RunConsoleCommand( "-attack" ) 
					shooting = false
				elseif !shooting and ( EntTrace:IsPlayer() ) then
					RunConsoleCommand( "+attack" ) 
					shooting = true
				end
			end
		end
	end
	if GetConVarNumber(rook.."TriggerBot") == 0 then
		RunConsoleCommand( "-attack" )
	end
end)]]

-- Custom Crosshair --

hook.Add( "HUDPaint", "CrossHair", function()
	if GetConVarNumber(rook.."Crosshair") == 1 then
		RunConsoleCommand( "hud_draw_fixed_reticle", "0" )
		local h = ScrH() / 2
		local w = ScrW() / 2
		if GetConVarNumber("Crosshair_Style") == 1 then
			surface.SetDrawColor(crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt())
			surface.DrawLine( w + crosshair_size:GetInt(), h, w - crosshair_size:GetInt(), h )
			surface.DrawLine( w, h + crosshair_size:GetInt(), w, h - crosshair_size:GetInt() )
		end
		if GetConVarNumber("Crosshair_Style") == 2 then
			surface.DrawCircle( w, h, crosshair_size:GetInt(), crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt() )
		end 
	else
		RunConsoleCommand( "hud_draw_fixed_reticle", "0" )
	end
end)

-- Murder Detector --

hook.Add( "HUDPaint", "Murder", function()
	if (GetConVarNumber(rook.."Murder") == 1) and engine.ActiveGamemode() == "murder" then
		for k, v in pairs ( player.GetAll() ) do
			if UtilityCheck(v) == true then
				if v:HasWeapon("weapon_mu_knife") then
					local plyName = v:Nick()
					local plyPos = v:GetPos()
					local plyinfopos = ( plyPos + Vector( 0, 0, 90 )):ToScreen()
					draw.SimpleTextOutlined("[Murderer] "..v:GetName(), "BigTextForHUD", 0, 800 + ( k * 20 ), Color(255, 0, 0), TEXT_ALIGN_LEFT, 1, 1, Color( 0, 0, 0 ) )
				end
			end
		end
	end
end)

-- Player Info --

hook.Add( "HUDPaint", "PlayerInfo", function()
	if (GetConVarNumber(rook.."PlayerInfo") == 1) then
		for k, v in pairs ( player.GetAll() ) do
			local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
			if plydistance < renderdist:GetInt() then
				if UtilityCheck(v) == true then
					local plyName = v:Nick()
					local plyPos = v:GetPos()
					local plyinfopos = ( plyPos + Vector( 0, 0, 90 )):ToScreen()
					draw.SimpleTextOutlined( plyName, "TargetID", plyinfopos.x, plyinfopos.y - 50, team.GetColor(v:Team()), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyDistance = "Distance: "..math.Round(((ply:GetPos():Distance( v:GetPos()))))
					draw.SimpleTextOutlined( plyDistance, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 16, team.GetColor(v:Team()), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyGroup = "Rank: " .. v:GetUserGroup()
					draw.SimpleTextOutlined( plyGroup, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 32, Color( 255, 255, 255 ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyHP = "HP: " .. v:Health() 
					draw.SimpleTextOutlined( plyHP, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 8, Color( 255, 0, 0 ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyARMOR = "Armor: " .. v:Armor()
					draw.SimpleTextOutlined( plyARMOR, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 0, Color( 0, 255, 155 ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plySTEAM = "SteamID: " .. v:SteamID()
					draw.SimpleTextOutlined( plySTEAM, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 39, Color( 255, 255, 255 ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyPING = "Ping: " .. v:Ping()
					draw.SimpleTextOutlined( plyPING, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 24, Color( 255, 255, 255 ), 1, 1, 1, Color( 0, 0, 0 ) )
				end
			end
		end
	end
end)

-- 2DBoxESP --

local function CornerCords( ent )
local min, max = ent:OBBMins(), ent:OBBMaxs()
local findcorners = {
        Vector( min.x, min.y, min.z ),
        Vector( min.x, min.y, max.z ),
        Vector( min.x, max.y, min.z ),
        Vector( min.x, max.y, max.z ),
        Vector( max.x, min.y, min.z ),
        Vector( max.x, min.y, max.z ),
        Vector( max.x, max.y, min.z ),
        Vector( max.x, max.y, max.z )
}
local minX, minY, maxX, maxY = ScrW() * 2, ScrH() * 2, 0, 0
for _, corner in pairs( findcorners ) do
        local onScreen = ent:LocalToWorld( corner ):ToScreen()
        minX, minY = math.min( minX, onScreen.x ), math.min( minY, onScreen.y )
        maxX, maxY = math.max( maxX, onScreen.x ), math.max( maxY, onScreen.y )
end
return minX, minY, maxX, maxY
end
hook.Add( "HUDPaint", "2DBoxESP", function()
	for k,v in pairs ( player.GetAll() ) do
		local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
		if plydistance < renderdist:GetInt() then
			if GetConVarNumber(rook.."2DBoxESP") == 1 then
				if UtilityCheck(v) == true then
					if ESPColorStyle == 1 then
						surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
					else
						surface.SetDrawColor(team.GetColor(v:Team()))
					end
					local x1,y1,x2,y2 = CornerCords(v)
					surface.DrawLine( x1, y1, math.min( x1 + 500, x2 ), y1 )
					surface.DrawLine( x1, y1, x1, math.min( y1 + 500, y2 ) )
					surface.DrawLine( x2, y1, math.max( x2 - 500, x1 ), y1 )
					surface.DrawLine( x2, y1, x2, math.min( y1 + 500, y2 ) )
					surface.DrawLine( x1, y2, math.min( x1 + 500, x2 ), y2 )
					surface.DrawLine( x1, y2, x1, math.max( y2 - 500, y1 ) )
					surface.DrawLine( x2, y2, math.max( x2 - 500, x1 ), y2 )
					surface.DrawLine( x2, y2, x2, math.max( y2 - 500, y1 ) )
				end
			end
		end
	end
end)

-- 3DBoxESP --

hook.Add("HUDPaint", "3DBoxESP", function()
    for k,v in pairs(player.GetAll()) do
		local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
		if plydistance < renderdist:GetInt() then
			if GetConVarNumber(rook.."3DBoxESP") == 1 then
				if UtilityCheck(v) == true then
					local ply = ply
					local plyPos = v:GetPos()
					local head = v:OBBMaxs()
					local feet = v:OBBMins()
					local eye = v:EyeAngles()
					cam.Start3D()
					if ESPColorStyle == 1 then
						render.DrawWireframeBox( plyPos, Angle( 0, eye.y, 0), feet, head, Color( espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt() ) )
					else
						render.DrawWireframeBox( plyPos, Angle( 0, eye.y, 0), feet, head, team.GetColor(v:Team()) )
					end
					cam.End3D()
				end
			end
		end
	end
end)

-- Speedometer --

hook.Add( "HUDPaint", "Speedometer", function()
	if GetConVarNumber(rook.."Speedometer") == 1 and GetConVarNumber(rook.."HUD") == 1 then
		local plyspeed = math.Round(ply:GetVelocity():Length())
		draw.SimpleTextOutlined( "Speed: "..plyspeed, "BigTextForHUD", SizeW/500,  SizeH/2.5,  Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color( 0, 0 , 0 ))
	end
end)

-- FPS Counter --

hook.Add("HUDPaint" , "FPSCounter" , function()
  if GetConVarNumber(rook.."FPSCounter") == 1 and GetConVarNumber(rook.."HUD") == 1 then
        FPS = math.Round(1/RealFrameTime()) 
		draw.SimpleTextOutlined( "FPS: "..FPS, "BigTextForHUD", SizeW/500,  SizeH/2.2,  Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color( 0, 0 , 0 ))
	end
end)

-- Prop ESP --

hook.Add( "HUDPaint", "PropESP", function()
	for k,v in pairs (ents.FindByClass("prop_physics")) do
		local propdistance = math.Round((ply:GetPos():Distance( v:GetPos())))
		if propdistance < renderdist:GetInt() then
			if GetConVarNumber(rook.."PropESP") == 1 then
				cam.Start3D(EyePos(), EyeAngles())
				if v:IsValid() then
					cam.IgnoreZ( true )
					render.SuppressEngineLighting( true )
						if ESPColorStyle == 1 then
							render.SetColorModulation(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt())
						else
							render.SetColorModulation( 255, 255, 255)
						end
					render.SetBlend(0.01)
					v:DrawModel()
					cam.IgnoreZ( false )
					render.SuppressEngineLighting( false )
					cam.End3D()
				end
			end
		end
	end
end)

-- Chams --

hook.Add( "HUDPaint", "PlayerChams", function()
	for k, v in pairs ( player.GetAll() ) do
		if GetConVarNumber(rook.."Chams") == 1 then
			if UtilityCheck(v) == true then
				local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
				if plydistance < renderdist:GetInt() then
					cam.Start3D(EyePos(), EyeAngles())
					cam.IgnoreZ( true )
					render.SuppressEngineLighting( true )
					v:DrawModel()
					cam.IgnoreZ( false )
					render.SuppressEngineLighting( false )
					cam.End3D()
				end
			end
		end
	end
end)

-- Flashlight Spammer --

local function flashspammer(cmd)
	if  input.IsKeyDown(KEY_F) then
		cmd:SetImpulse(100)
	end
 end
hook.Remove("CreateMove", "flashspam")

if GetConVarNumber(rook.."FlashlightSpam") == 1 then
	hook.Add("CreateMove", "flashspam", flashspammer)
end
cvars.AddChangeCallback(rook.."FlashlightSpam", function() 
	if GetConVarNumber(rook.."FlashlightSpam") == 1 then
		hook.Add("CreateMove", "flashspam", flashspammer)
	else
		hook.Remove("CreateMove", "flashspam")
	end
end)

-- Rainbow Physgun --

local OGPhysColor = ply:GetInfo( "cl_weaponcolor" )
local Num = 0
local function rainbow()
	if GetConVarNumber(rook.."rainbowphys") == 1 then
		Num = Num + 1
        ply:SetWeaponColor(Vector(math.Rand(0,1),math.Rand(0,1),math.Rand(0,1)))
        Num = 0
	end
end
if GetConVarNumber(rook.."rainbowphys") == 1 then
	hook.Add("Think","rainbowphys",rainbow)
else
	hook.Remove("Think","rainbowphys",rainbow)
end
cvars.AddChangeCallback(rook.."rainbowphys", function() 
	if GetConVarNumber(rook.."rainbowphys") == 1 then
		hook.Add("CreateMove", "rainbowphys", rainbow)
	else
		hook.Remove("CreateMove", "rainbowphys")
	    ply:SetWeaponColor(Vector(OGPhysColor))
        Num = 0
	end
end)

-- Admin List / Spectator List --

StaffCheck = {}
hook.Add("HUDPaint", "AdminList", function()
	if GetConVarNumber(rook.."AdminList") == 1 and GetConVarNumber(rook.."HUD") == 1 then
		local indent = 0
		for k, v in pairs(player.GetAll()) do
			if v:IsAdmin()  or string.find(v:GetUserGroup(), "mod") or string.find(v:GetUserGroup(), "admin") or string.find(v:GetUserGroup(), "staff") then
				draw.SimpleTextOutlined("["..v:GetUserGroup().."] "..v:GetName(), "BigTextForHUD", 0, 325+indent, Color(255, 102, 102), TEXT_ALIGN_LEFT, 1, 1, Color( 0, 0, 0 ) )
				indent = indent +30
			end
		end
	end
end)


-- Entity ESP --

local EntsToShow = {}
local OtherEnts = {}
table.Empty(OtherEnts)
hook.Add("Think", "EntTrack", function()
	for k,v in pairs(ents.GetAll()) do
		if table.HasValue(OtherEnts, v:GetClass()) ~= true then
			table.insert(OtherEnts, v:GetClass())
			table.sort(OtherEnts)
		end
	end
end)
hook.Add("HUDPaint", "ShowEnts", function()
	if GetConVarNumber(rook.."EntityESP") == 1 then
		for k,v in pairs(ents.GetAll()) do
			local entdistance = math.Round((ply:GetPos():Distance( v:GetPos())))
			local drawing = false
			if GetConVarNumber(rook.."EntityESP") == 1 and entdistance < renderdist:GetInt() then
				for i,p in pairs(EntsToShow) do
					if v:GetClass() == p then
						drawing = true
					end
				end
			end
			if drawing then
				cam.Start3D(EyePos(), EyeAngles())
				cam.IgnoreZ( true )
				render.SuppressEngineLighting( true )
				if ESPColorStyle == 1 then
					render.SetColorModulation(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt())
				else
					render.SetColorModulation( 255, 255, 255 )
				end
				render.SetBlend(0.08)
				v:DrawModel()
				cam.IgnoreZ( false )
				render.SuppressEngineLighting( false )
				cam.End3D()
				local entfinder = v:GetPos():ToScreen()
				surface.SetTextPos( entfinder.x - 15, entfinder.y ) 
				surface.SetFont("default")
				local text = v:GetClass()
				local Width, Height = surface.GetTextSize(text)
				if ESPColorStyle == 1 then
					surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt())
					surface.SetTextColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt())
				else
					surface.SetDrawColor( 255, 0, 0, 255)
					surface.SetTextColor( 255, 0, 0, 255)
				end
				surface.DrawOutlinedRect( entfinder.x - 20, entfinder.y, Width + 10, Height + 5)
				surface.DrawText( text )
			end
		end
	end
end)

-- BHop --

function BHop()
	if GetConVarNumber(rook.."BHop") == 1 and input.IsKeyDown( KEY_SPACE ) and GetConVarNumber(rook.."BHop_AC") == 1 then
		if ply:IsTyping() == false and ply:IsOnGround() then
	 		RunConsoleCommand("+jump")
	 		timer.Create("Bhop", 0, math.random( .280, .290 ), function()
	 		 	RunConsoleCommand("-jump")
			end)
		end
	elseif GetConVarNumber(rook.."BHop") == 1 and input.IsKeyDown( KEY_SPACE ) and GetConVarNumber(rook.."BHop_AC") == 0 then
		if ply:IsTyping() == false and ply:IsOnGround() then
			RunConsoleCommand("+jump")
			timer.Create("Bhop", 0, .01, function()
				RunConsoleCommand("-jump")
			end)
		end
	end
end

hook.Add("Think", "BHop", BHop)

-- 3rd Person & CustomFOV --

hook.Add( "CalcView", "ThirdPerson", function(ply, pos, angles, fov)
	local ThirdPerson = {}
	local CustomFOV = {}
	if GetConVarNumber(rook.."ThirdPerson") == 1 then
		ThirdPerson.origin = pos-( angles:Forward()*100 )
		ThirdPerson.angles = angles
		ThirdPerson.fov = fov
		ThirdPerson.drawviewer = true
		return ThirdPerson
	else 
		ThirdPerson.origin = pos-( angles:Forward() )
		ThirdPerson.angles = angles
		ThirdPerson.fov = fov
	end
end)

function CalcView(ply, pos, angles, fov)
	if GetConVarNumber(rook.."CustomFOV") == 1 and GetConVarNumber(rook.."ThirdPerson") == 0 then
		local view = {}
		view.origin = pos
		view.angles = angles
		view.fov = GetConVarNumber("fovslider")
		return view
	end
end
hook.Add("CalcView", tostring(math.random(666, 1221312)), CalcView)

-- //GUI and Menu\\ --
-- Use: Okay so most people do this at the top, but I did this last and it makes more sense judging by the way I ordered my bloody thing, so leave me alone. -- 
concommand.Add( "Rook_Menu", function()
    local DP = vgui.Create( "DFrame" )
	DP.SetSkin(SKIN)
    DP:SetPos( 100, 100 )
    DP:SetSize( 690, 275 )
    DP:SetTitle( client )
    DP:SetDraggable( true )
    DP:MakePopup()
    DP:Center()
	DP:ShowCloseButton( false )
	DP.Paint = function( self, w, h ) 
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
		draw.RoundedBox( 0, 5, 29, 116, 241, Color( 0, 0, 0, 155 ) )
	end
    local sheet = vgui.Create( "DColumnSheet", DP )
    sheet:Dock( FILL )
	
local x = vgui.Create( "DImageButton", DP )
	x:SetPos( 660, 2 )
	x:SetSize( 20, 20 )
	x:SetImage( "icon16/cancel.png" )
	x.DoClick = function()
		DP:Close()
	end	
	
    local panel1 = vgui.Create( "DPanel", sheet )
    panel1:Dock( FILL )
    panel1.Paint = function( self, w, h ) 
    panel1.Paint = function( self, w, h )
		DrawBlur(self, 3)
			draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
		end 
	end
    sheet:AddSheet( "Info", panel1, "icon16/application_osx_terminal.png" )
	
	local mainmsg = vgui.Create( "HTML" ) 
	mainmsg:SetParent( panel1 )
	mainmsg:SetPos( 0, 0 )
	mainmsg:SetSize( 560, 200 )
	mainmsg:SizeToContents()
	mainmsg:OpenURL( "https://i.imgur.com/yzrVHYZ.png" )
	
    local panel2 = vgui.Create( "DPanel", sheet )
    panel2:Dock( FILL )
    panel2.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Visual", panel2, "icon16/eye.png" )
	
    local panel3 = vgui.Create( "DPanel", sheet )
    panel3:Dock( FILL )
    panel3.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Aim", panel3, "icon16/user_go.png")
	
    local panel4 = vgui.Create( "DPanel", sheet )
    panel4:Dock( FILL )
    panel4.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Misc", panel4, "icon16/joystick.png" )
	
    local panel5 = vgui.Create( "DPanel", sheet )
    panel5:Dock( FILL )
    panel5.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Chat", panel5, "icon16/comment.png" )
	
    local panel6 = vgui.Create( "DPanel", sheet )
    panel6:Dock( FILL )
    panel6.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Gamemode", panel6, "icon16/controller.png" )
	
    local panel7 = vgui.Create( "DPanel", sheet )
    panel7:Dock( FILL )
    panel7.Paint = function( self, w, h )
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 155 ) )
	end
    sheet:AddSheet( "Customize", panel7, "icon16/cog.png" )

	local UsefulButton1 = vgui.Create( "DButton", panel1 )
	UsefulButton1:SetText( "Jay's Steam Profile" )
	UsefulButton1:SetTextColor( Color( 255, 255, 255 ) )
	UsefulButton1:SetSize( 190, 42 )
	UsefulButton1:SetPos( 0,200 )
	UsefulButton1.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 150, 150, 150, 25 ) ) 
		if UsefulButton1:IsHovered() then 
			draw.RoundedBox( 0, 0, 0, w, h, Color( 200, 200, 200, 35 ) ) 
		end
	end
	UsefulButton1.DoClick = function()
		gui.OpenURL( "https://steamcommunity.com/id/fcssensai/" )
	end

	local UsefulButton2 = vgui.Create( "DButton", panel1 )
	UsefulButton2:SetText( "Inco Dev Group" )
	UsefulButton2:SetTextColor( Color( 255, 255, 255 ) )
	UsefulButton2:SetSize( 185, 42 )
	UsefulButton2:SetPos( 190, 200 )
	UsefulButton2.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 150, 150, 150, 25 ) ) 
		if UsefulButton2:IsHovered() then 
			draw.RoundedBox( 0, 0, 0, w, h, Color( 200, 200, 200, 35 ) ) 
		end
	end
	UsefulButton2.DoClick = function()
		gui.OpenURL( "https://www.incodg.xyz/" )
	end

	local UsefulButton3 = vgui.Create( "DButton", panel1 )
	UsefulButton3:SetText( "IncoDG Discord" )
	UsefulButton3:SetTextColor( Color( 255, 255, 255 ) )
	UsefulButton3:SetSize( 190, 42 )
	UsefulButton3:SetPos( 375, 200 )
	UsefulButton3.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 150, 150, 150, 25 ) ) 
		if UsefulButton3:IsHovered() then 
			draw.RoundedBox( 0, 0, 0, w, h, Color( 200, 200, 200, 35 ) ) 
		end
	end
	UsefulButton3.DoClick = function()
		gui.OpenURL( "https://discord.gg/4HPjZHfUxn" )
	end
	
	local Visualcheat1 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat1:SetPos( 10,10 )
	Visualcheat1:SetText( "HUD" )
	Visualcheat1:SetConVar( rook.."HUD" )
	Visualcheat1:SizeToContents()
	local Visualcheat2 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat2:SetPos( 25,30 )
	Visualcheat2:SetText( "Speedometer" )
	Visualcheat2:SetConVar( rook.."Speedometer" )
	Visualcheat2:SizeToContents()
	local Visualcheat3 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat3:SetPos( 25,50 )
	Visualcheat3:SetText( "FPS Counter" )
	Visualcheat3:SetConVar( rook.."FPSCounter" )
	Visualcheat3:SizeToContents()
	local Visualcheat4 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat4:SetPos( 25,70 )
	Visualcheat4:SetText( "Admin/Staff Detector" )
	Visualcheat4:SetConVar( rook.."AdminList" )
	Visualcheat4:SizeToContents()
	local Visualcheat5 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat5:SetPos( 175,10 )
	Visualcheat5:SetText( "2D Box ESP" )
	Visualcheat5:SetConVar( rook.."2DBoxESP" )
	Visualcheat5:SizeToContents()
	local Visualcheat6 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat6:SetPos( 175,30 )
	Visualcheat6:SetText( "3D Box ESP" )
	Visualcheat6:SetConVar( rook.."3DBoxESP" )
	Visualcheat6:SizeToContents()
	local Visualcheat7 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat7:SetPos( 175,50 )
	Visualcheat7:SetText( "Prop ESP" )
	Visualcheat7:SetConVar( rook.."PropESP" )
	Visualcheat7:SizeToContents()
	local Visualcheat8 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat8:SetPos( 175,70 )
	Visualcheat8:SetText( "Player Info" )
	Visualcheat8:SetConVar( rook.."PlayerInfo" )
	Visualcheat8:SizeToContents()
	local Visualcheat9 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat9:SetPos( 175,90 )
	Visualcheat9:SetText( "Chams" )
	Visualcheat9:SetConVar( rook.."Chams" )
	Visualcheat9:SizeToContents()
	local Visualcheat10 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat10:SetPos( 175,110 )
	Visualcheat10:SetText( "Skeleton ESP" )
	Visualcheat10:SetConVar( rook.."SkeletonESP" )
	Visualcheat10:SizeToContents()
	local Visualcheat11 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat11:SetPos( 175,130 )
	Visualcheat11:SetText( "Eye Tracer" )
	Visualcheat11:SetConVar( rook.."EyeTracker" )
	Visualcheat11:SizeToContents()
	local Visualcheat12 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat12:SetPos( 175,150 )
	Visualcheat12:SetText( "Tracers" )
	Visualcheat12:SetConVar( rook.."Tracer" )
	Visualcheat12:SizeToContents()
	local Visualcheat13 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat13:SetPos( 380,10 )
	Visualcheat13:SetText( "Entity ESP" )
	Visualcheat13:SetConVar( rook.."EntityESP" )
	Visualcheat13:SizeToContents()
    local DermaList = vgui.Create( "DPanelList", panel2 )
    DermaList:SetPos( 280,30 )
    DermaList:SetSize( 300, 360 )
    DermaList:SetSpacing( 75 )
    DermaList:EnableHorizontal( false )
    DermaList:EnableVerticalScrollbar( true )
    local SelectedEnts = vgui.Create("DListView")
    SelectedEnts:SetSize(125, 205)
    SelectedEnts:SetPos(0, 0)
    SelectedEnts:SetMultiSelect(false)
    SelectedEnts:AddColumn("Shown Entities")
    for k,v in pairs(EntsToShow) do SelectedEnts:AddLine(v) end
    DermaList:Add(SelectedEnts)
    local AllEnts = vgui.Create("DListView")
    AllEnts:SetSize(125, 205)
    AllEnts:SetPos(150, 0)
    AllEnts:SetMultiSelect(false)
    AllEnts:AddColumn("Hidden Entities")
    for k,v in pairs(OtherEnts) do AllEnts:AddLine(v) end
    DermaList:Add(AllEnts)
    AllEnts.DoDoubleClick = function(parent, index, list)
        local v = OtherEnts[index]
        table.insert(EntsToShow, v)
        table.remove(OtherEnts, index)
        SelectedEnts:AddLine(v)
        parent:RemoveLine(index)
    end
    SelectedEnts.DoDoubleClick = function(parent, index, list)
        local v = EntsToShow[index]
        table.insert(OtherEnts, EntsToShow[index])
        table.remove(EntsToShow, index)

        AllEnts:AddLine(v)
        parent:RemoveLine(index)
    end
	
	local Aimcheat1 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat1:SetPos( 10,40 )
	Aimcheat1:SetText( "Aimbot" )
	Aimcheat1:SetConVar( rook.."Aimbot" )
	Aimcheat1:SizeToContents()
	local Aimcheat2 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat2:SetPos( 30,60 )
	Aimcheat2:SetText( "Aimbot Ignore Friends" )
	Aimcheat2:SetConVar( rook.."Aimbot_Ignore_Friends" )
	Aimcheat2:SizeToContents()
	local Aimcheat3 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat3:SetPos( 30,80 )
	Aimcheat3:SetText( "Aimbot Ignore Team" )
	Aimcheat3:SetConVar( rook.."Aimbot_Ignore_Team" )
	Aimcheat3:SizeToContents()
	local Aimcheat4 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat4:SetPos( 10,100 )
	Aimcheat4:SetText( "FOV Aimbot" )
	Aimcheat4:SetConVar( rook.."FOVAimbot" )
	Aimcheat4:SizeToContents()
	local AimBoneSelector = vgui.Create( "DComboBox", panel3 )
	AimBoneSelector:SetPos( 10, 10 )
	AimBoneSelector:SetSize( 150, 20 )
	AimBoneSelector:SetValue( "Aimbot Bone Selector" )
	AimBoneSelector:AddChoice( "Head" )
	AimBoneSelector:AddChoice( "Neck" )
	AimBoneSelector:AddChoice( "Upper Body" )
	AimBoneSelector:AddChoice( "Left Arm" )
	AimBoneSelector:AddChoice( "Right Arm" )
	AimBoneSelector:AddChoice( "Waist" )
	AimBoneSelector:AddChoice( "Left Leg" )
	AimBoneSelector:AddChoice( "Right Leg" )
	AimBoneSelector.OnSelect = function( self, index, value )
		AimBoneType = ( index )
	end
	--local Aimcheat5 = vgui.Create( "DCheckBoxLabel", panel3 )
	--Aimcheat5:SetPos( 195,10 )
	--Aimcheat5:SetText( "Trigger Bot" )
	--Aimcheat5:SetConVar( rook.."TriggerBot" )
	--Aimcheat5:SizeToContents()
	--local Aimcheat6 = vgui.Create( "DCheckBoxLabel", panel3 )
	--Aimcheat6:SetPos( 215,30 )
	--Aimcheat6:SetText( "Trigger Bot Ignore Friends" )
	--Aimcheat6:SetConVar( rook.."TriggerBot_Ignore_Friends" )
	--Aimcheat6:SizeToContents()
	--local Aimcheat7 = vgui.Create( "DCheckBoxLabel", panel3 )
	--Aimcheat7:SetPos( 215,50 )
	--Aimcheat7:SetText( "Trigger Bot Ignore Team" )
	--Aimcheat7:SetConVar( rook.."TriggerBot_Ignore_Team" )
	--Aimcheat7:SizeToContents()
	
	local binder = vgui.Create( "DBinder", panel3 )
	binder:SetSize( 560, 35 )
	binder:SetPos( 0, 205 )
	function binder:OnChange( num )
		AimKey = num
	end
	
	local aimkeymsg = vgui.Create( "HTML" ) 
	aimkeymsg:SetParent( panel3 )
	aimkeymsg:SetPos( -25, 170 )
	aimkeymsg:SetSize( 600, 35 )
	aimkeymsg:SizeToContents()
	aimkeymsg:OpenURL( "https://i.imgur.com/jUIWxLS.png" )
	
	local Misccheat1 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat1:SetPos( 10,10 )
	Misccheat1:SetText( "Flashlight Spammer" )
	Misccheat1:SetConVar( rook.."FlashlightSpam" )
	Misccheat1:SizeToContents()
	local Misccheat2 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat2:SetPos( 10,30 )
	Misccheat2:SetText( "Rainbow Physgun" )
	Misccheat2:SetConVar( rook.."rainbowphys" )
	Misccheat2:SizeToContents()
	local Misccheat3 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat3:SetPos( 10,50 )
	Misccheat3:SetText( "Third Person" )
	Misccheat3:SetConVar( rook.."ThirdPerson" )
	Misccheat3:SizeToContents()
	local Misccheat4 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat4:SetPos( 10,70 )
	Misccheat4:SetText( "Custom FOV" )
	Misccheat4:SetConVar( rook.."CustomFOV" )
	Misccheat4:SizeToContents()
	local FOVSlider = vgui.Create( "DNumSlider", panel4 )
	FOVSlider:SetPos( 10, 90 )
	FOVSlider:SetSize( 190, 25 )
	FOVSlider:SetText( "FOV" )
	FOVSlider:SetMin( 10 )
	FOVSlider:SetMax( 179 )
	FOVSlider:SetDecimals( 0 )
	FOVSlider:SetConVar( "FOVSlider" )
	local Misccheat6 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat6:SetPos( 195,10 )
	Misccheat6:SetText( "Auto Bunny Hop (BHop)" )
	Misccheat6:SetConVar( rook.."BHop" )
	Misccheat6:SizeToContents()
	local Misccheat7 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat7:SetPos( 215,30 )
	Misccheat7:SetText( "BHop Anticheat Mode" )
	Misccheat7:SetConVar( rook.."BHop_AC" )
	Misccheat7:SizeToContents()
	
	local Misccheat8 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat8:SetPos( 380,10 )
	Misccheat8:SetText( "Crosshair" )
	Misccheat8:SetConVar( rook.."CrossHair" )
	Misccheat8:SizeToContents()
	local SliderRed = vgui.Create( "DNumSlider", panel4 )
	SliderRed:SetPos( 380, 30 )
	SliderRed:SetSize( 190, 25 )
	SliderRed:SetText( "Red" )
	SliderRed:SetMin( 0 )
	SliderRed:SetMax( 255 )
	SliderRed:SetDecimals( 0 )
	SliderRed:SetConVar( "Crosshair_R" )
	local SliderGreen = vgui.Create( "DNumSlider", panel4 )
	SliderGreen:SetPos( 380, 50 )
	SliderGreen:SetSize( 190, 25 )
	SliderGreen:SetText( "Green" )
	SliderGreen:SetMin( 0 )
	SliderGreen:SetMax( 255 )
	SliderGreen:SetDecimals( 0 )
	SliderGreen:SetConVar( "Crosshair_G" )
	local SliderBlue = vgui.Create( "DNumSlider", panel4 )
	SliderBlue:SetPos( 380, 70 )
	SliderBlue:SetSize( 190, 25 )
	SliderBlue:SetText( "Blue" )
	SliderBlue:SetMin( 0 )
	SliderBlue:SetMax( 255 )
	SliderBlue:SetDecimals( 0 )
	SliderBlue:SetConVar( "Crosshair_B" )
	local SliderAlpha = vgui.Create( "DNumSlider", panel4 )
	SliderAlpha:SetPos( 380, 90 )
	SliderAlpha:SetSize( 190, 25 )
	SliderAlpha:SetText( "Opacity" )
	SliderAlpha:SetMin( 50 )
	SliderAlpha:SetMax( 255 )
	SliderAlpha:SetDecimals( 0 )
	SliderAlpha:SetConVar( "Crosshair_A" )
	local SliderSize = vgui.Create( "DNumSlider", panel4 )
	SliderSize:SetPos( 380, 110 )
	SliderSize:SetSize( 190, 25 )
	SliderSize:SetText( "Size" )
	SliderSize:SetMin( 1 )
	SliderSize:SetMax( 255 )
	SliderSize:SetDecimals( 0 )
	SliderSize:SetConVar( "Crosshair_Size" )
	local SliderStyle = vgui.Create( "DNumSlider", panel4 )
	SliderStyle:SetPos( 380, 130 )
	SliderStyle:SetSize( 190, 25 )
	SliderStyle:SetText( "Style" )
	SliderStyle:SetMin( 0 )
	SliderStyle:SetMax( 2 )
	SliderStyle:SetDecimals( 0 )
	SliderStyle:SetConVar( "Crosshair_Style" )

	local Chatcheat1 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat1:SetPos( 10,10 )
	Chatcheat1:SetText( "Chat Spammer" )
	Chatcheat1:SetConVar( rook.."ChatSpam" )
	Chatcheat1:SizeToContents()
	local Chatcheat2 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat2:SetPos( 30,30 )
	Chatcheat2:SetText( "DarkRP Mode (/ooc)" )
	Chatcheat2:SetConVar( rook.."ChatSpam_DarkRP" )
	Chatcheat2:SizeToContents()
	local Chatcheat3 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat3:SetPos( 30,50 )
	Chatcheat3:SetText( "Admin Mode (@)" )
	Chatcheat3:SetConVar( rook.."ChatSpam_Admin" )
	Chatcheat3:SizeToContents()
	local chatbox = vgui.Create( "HTML" ) 
	chatbox:SetParent( panel5 )
	chatbox:SetPos( 165, 0 )
	chatbox:SetSize( 395, 245 )
	chatbox:SizeToContents()
	chatbox:OpenURL( "https://rook-scripts.chatovod.com/" )
	
	local GamemodeCheat1 = vgui.Create( "DCheckBoxLabel", panel6 )
	GamemodeCheat1:SetPos( 10,10 )
	GamemodeCheat1:SetText( "Murderer Detector" )
	GamemodeCheat1:SetConVar( rook.."Murder" )
	GamemodeCheat1:SizeToContents()
	
	local RenderDistance = vgui.Create( "DNumSlider", panel7 )
	RenderDistance:SetPos( 10, 50 )
	RenderDistance:SetSize( 190, 25 )
	RenderDistance:SetText( "Render Distance" )
	RenderDistance:SetMin( 500 )
	RenderDistance:SetMax( 10000 )
	RenderDistance:SetDecimals( 0 )
	RenderDistance:SetConVar( "RenderDistance" )
	local DComboBox = vgui.Create( "DComboBox", panel7 )
	DComboBox:SetPos( 195, 50 )
	DComboBox:SetSize( 100, 20 )
	DComboBox:SetValue( "Color Style" )
	DComboBox:AddChoice( "Custom Colors" )
	DComboBox:AddChoice( "Group Colors" )
	DComboBox.OnSelect = function( self, index, value )
		ESPColorStyle = ( index )
	end
	local ESPColorRed = vgui.Create( "DNumSlider", panel7 )
	ESPColorRed:SetPos( 195, 70 )
	ESPColorRed:SetSize( 190, 25 )
	ESPColorRed:SetText( "Red" )
	ESPColorRed:SetMin( 0 )
	ESPColorRed:SetMax( 255 )
	ESPColorRed:SetDecimals( 0 )
	ESPColorRed:SetConVar( "ESPColor_R" )
	local ESPColorGreen = vgui.Create( "DNumSlider", panel7 )
	ESPColorGreen:SetPos( 195, 90 )
	ESPColorGreen:SetSize( 190, 25 )
	ESPColorGreen:SetText( "Green" )
	ESPColorGreen:SetMin( 0 )
	ESPColorGreen:SetMax( 255 )
	ESPColorGreen:SetDecimals( 0 )
	ESPColorGreen:SetConVar( "ESPColor_G" )
	local ESPColorBlue = vgui.Create( "DNumSlider", panel7 )
	ESPColorBlue:SetPos( 195, 110 )
	ESPColorBlue:SetSize( 190, 25 )
	ESPColorBlue:SetText( "Blue" )
	ESPColorBlue:SetMin( 0 )
	ESPColorBlue:SetMax( 255 )
	ESPColorBlue:SetDecimals( 0 )
	ESPColorBlue:SetConVar( "ESPColor_B" )
	local ESPColorAlpha = vgui.Create( "DNumSlider", panel7 )
	ESPColorAlpha:SetPos( 195, 130 )
	ESPColorAlpha:SetSize( 190, 25 )
	ESPColorAlpha:SetText( "Opacity" )
	ESPColorAlpha:SetMin( 50 )
	ESPColorAlpha:SetMax( 255 )
	ESPColorAlpha:SetDecimals( 0 )
	ESPColorAlpha:SetConVar( "ESPColor_A" )
	local configmsg = vgui.Create( "HTML" ) 
	configmsg:SetParent( panel7 )
	configmsg:SetPos( -25, 0 )
	configmsg:SetSize( 600, 35 )
	configmsg:SizeToContents()
	configmsg:OpenURL( "https://i.imgur.com/OXSCl0Z.png" )
end)