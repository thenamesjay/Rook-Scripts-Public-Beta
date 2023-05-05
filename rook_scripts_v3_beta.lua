local d = vgui.Create('DHTML');
d:SetAllowLua(true);
return d:ConsoleMessage([[RUNLUA:
-- // Startup Parameters \\ --
-- Use: Getting everything localized and ready for action --
if (SERVER) then return end 
local version = ("v3") 
local client = ("Rook Scripts "..version)
local ply = LocalPlayer() 
local ESPColorStyle = ESPColorStyle or 1 
local AimKey = AimKey or 12 
local AimBone = AimBone or ("ValveBiped.Bip01_Head1") 
local AimBoneType = AimBoneType or 1 
OtherPlayers = OtherPlayers or {}
NoShootGuys = NoShootGuys or {}
EntsToShow = EntsToShow or {}
OtherEnts = OtherEnts or {}
local function UtilityCheck(v)
    if v != ply and v:Alive() and v:IsValid() then
        return true
    else
        return false
    end
end
local function PermissionCheck(v)
    if v:IsAdmin()  or string.find(v:GetUserGroup(), "mod") or string.find(v:GetUserGroup(), "admin") or string.find(v:GetUserGroup(), "staff") then
        return true
    else
        return false
    end
end
function GhostCheck(v)
	if not IsValid(v) or v:GetNoDraw() or v:GetRenderMode() == RENDERMODE_NONE then
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
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "'||''|.                   '||          .|'''.|                   ||             .          \n")
MsgC (Color( 220, 220, 220 ), " ||   ||    ...     ...    ||  ..      ||..  '    ....  ... ..  ...  ... ...  .||.   ....  \n")
MsgC (Color( 220, 220, 220 ), " ||''|'   .|  '|. .|  '|.  || .'        ''|||.  .|   ''  ||' ''  ||   ||'  ||  ||   ||. '  \n")
MsgC (Color( 220, 220, 220 ), " ||   |.  ||   || ||   ||  ||'|.      .     '|| ||       ||      ||   ||    |  ||   . '|.. \n")
MsgC (Color( 220, 220, 220 ), ".||.  '|'  '|..|'  '|..|' .||. ||.    |'....|'   '|...' .||.    .||.  ||...'   '|.' |'..|' \n")
MsgC (Color( 220, 220, 220 ), "                                                                      ||                   \n")
MsgC (Color( 220, 220, 220 ), "                                                                     ''''                  \n")
MsgC (Color( 220, 220, 220 ), "Made & Developed by Jay.\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "\n")
MsgC (Color( 220, 220, 220 ), "In Memory of <CODE BLUE>\n")
MsgC (Color( 220, 220, 220 ), "\n")												
MsgC (Color( 220, 220, 220 ), "Even though he is no longer with us, his work will be enjoyed for years on and the knowledge he has taught us will stay with us forever.\n")
MsgC (Color( 220, 220, 220 ), "Though we didn't see eye to eye, I applaud the work you have done for this community, and enjoyed the projects we shared, however shortlived they may have been.\n")
MsgC (Color( 220, 220, 220 ), "\n")			  
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
MsgC (Color( 220, 220, 220 ), "\n")	
chat.AddText(Color(0,0,0),"[RookScripts]",Color(0,255,0)," Initialized Successfully.")
chat.AddText(Color(0,0,0),"[RookScripts]",Color(200,200,200)," Type",Color(0,200,200)," rook_menu",Color(200,200,200)," to open the hack menu.")
rook = "Rook_"
-- //Fonts, Materials, Colors\\ --
-- Use: Styling and texturing the menu and it's assets --
surface.CreateFont( "HUGETextForHUD", {
	font = "DebugFixed",
	size = 100,
	weight = 500,
	antialias = true
} )
surface.CreateFont( "BigTextForHUD", {
	font = "DebugFixed",
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
if ( CAC ) or ( cac ) or ( QAC ) or ( qac ) or ( LSAC ) or ( lsac ) or (ncac) or (NCAC) or (lsac) or (LSAC) then
	chat.AddText(Color(0,0,0),"[RookScripts]",Color(255,0,0)," WARNING! ",Color(200,200,200),"Sophisticated AntiCheat Detected!")
	chat.AddText(Color(0,0,0),"[RookScripts]",Color(255,0,0)," WARNING! ",Color(200,200,200),"Unless you know what you are doing, you should probably disconnect to avoid a ban or other detection.")
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
-- Use: This will make it impossible to steal the file or screengrab the client. This is halfassed and won't save you from detection. It's just a failsafe. -- 
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
CreateClientConVar(rook.."FOV_Aimbot", 0, true, false)
CreateClientConVar(rook.."AimAssist", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Friends", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Staff", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Team", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Through_Walls", 0, true, false)
CreateClientConVar(rook.."Aimbot_Ignore_Ghosts", 0, true, false)
CreateClientConVar(rook.."Aimbot_Whitelist", 0, true, false)
CreateClientConVar(rook.."AdminList", 0, true, false)
CreateClientConVar(rook.."TriggerBot", 0, true, false)
CreateClientConVar(rook.."TriggerBot_Ignore_Friends", 0, true, false)
CreateClientConVar(rook.."TriggerBot_Ignore_Team", 0, true, false)
CreateClientConVar(rook.."TriggerBot_Ignore_Staff", 0, true, false)
CreateClientConVar(rook.."TriggerBot_Ignore_Ghosts", 0, true, false)
CreateClientConVar(rook.."CrossHair", 0, true, false)
CreateClientConVar(rook.."Crosshair_RGB", 0, true, false)
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
CreateClientConVar(rook.."TTT", 0, true, false)
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
-- Aim Assist Aimbot --
function aimassist()
	if GetConVarNumber(rook.."AimAssist") == 1 and ply:IsTyping() == false then
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
hook.Add("Think","Aimassist",aimassist)
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
				if v != LocalPlayer() and UtilityCheck(v) == true and v:LookupBone('ValveBiped.Bip01_Head1') != nil and v:LookupBone('ValveBiped.Bip01_R_UpperArm') != nil then
					if ESPColorStyle == 1 then
						surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
					elseif ESPColorStyle == 2 then
						local color = (team.GetColor(v:Team()))
						surface.SetDrawColor(color.r, color.g, color.b, espcolor_a:GetInt())
					else
						local time = CurTime()
						local speed = 1
						local offset = 0
						local lightness = 255
						local base_value = time * speed + offset
						local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
						local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
						local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
						surface.SetDrawColor(r, g, b, espcolor_a:GetInt())
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
						elseif ESPColorStyle == 2 then
							local color = (team.GetColor(v:Team()))
							surface.SetDrawColor(color.r, color.g, color.b, espcolor_a:GetInt())
						else
							local time = CurTime()
							local speed = 1
							local offset = 0
							local lightness = 255
							local base_value = time * speed + offset
							local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
							local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
							local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
							surface.SetDrawColor(r, g, b, espcolor_a:GetInt())
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
						elseif ESPColorStyle == 2 then
							local color = (team.GetColor(v:Team()))
							surface.SetDrawColor(color.r, color.g, color.b, espcolor_a:GetInt())
						else
							local time = CurTime()
							local speed = 1
							local offset = 0
							local lightness = 255
							local base_value = time * speed + offset
							local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
							local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
							local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
							surface.SetDrawColor(r, g, b, espcolor_a:GetInt())
						end
						pstart = v:GetPos():ToScreen()
						pend = LocalPlayer():GetBonePosition( LocalPlayer():LookupBone('ValveBiped.Bip01_Pelvis') ):ToScreen() or LocalPLayer():GetPos()
						surface.DrawLine(pstart.x,pstart.y,pend.x,pend.y)
					end
				end
			end
		end
	end
end)
-- Trigger Bot --
local shooting = false
hook.Add("Think", "Triggerbot", function()
    local ply = LocalPlayer()
    local EntTrace = ply:GetEyeTrace()
    if not EntTrace.Hit or not IsValid(EntTrace.Entity) then return end
    local target = EntTrace.Entity
    if GetConVarNumber(rook.."TriggerBot") == 1 and target:IsPlayer() then
        if GetConVarNumber(rook.."TriggerBot_Ignore_Friends") == 1 and target:GetFriendStatus() == "none" or GetConVarNumber(rook.."TriggerBot_Ignore_Friends") == 0 then
            if GetConVarNumber(rook.."TriggerBot_Ignore_Team") == 1 and target:Team() ~= ply:Team() or GetConVarNumber(rook.."TriggerBot_Ignore_Team") == 0 then
                if not shooting and target:IsPlayer() then
					timer.Simple(0.05, function()
                    RunConsoleCommand("+attack")
                    shooting = true
                end)
			end
                timer.Simple(0.075, function()
                    RunConsoleCommand("-attack")
                    shooting = false
                end)
            end
        end
    elseif shooting and GetConVarNumber(rook.."TriggerBot") == 1 then
        RunConsoleCommand("-attack")
        shooting = false
    end
end)
-- Custom Crosshair --
hook.Add( "HUDPaint", "CrossHair", function()
	if GetConVarNumber(rook.."Crosshair") == 1 then
		RunConsoleCommand( "hud_draw_fixed_reticle", "0" )
		local h = ScrH() / 2
		local w = ScrW() / 2
		if GetConVarNumber("Crosshair_Style") == 1 then
			if GetConVarNumber(rook.."Crosshair_RGB") == 0 then
				surface.SetDrawColor(crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt())
				surface.DrawLine( w + crosshair_size:GetInt(), h, w - crosshair_size:GetInt(), h )
				surface.DrawLine( w, h + crosshair_size:GetInt(), w, h - crosshair_size:GetInt() )
			else
				local time = CurTime()
				local speed = 1
				local offset = 0
				local lightness = 255
				local base_value = time * speed + offset
				local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
				local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
				local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
				local color = Color(r, g, b, crosshair_a:GetInt())
				surface.SetDrawColor(color)
				surface.DrawLine( w + crosshair_size:GetInt(), h, w - crosshair_size:GetInt(), h )
				surface.DrawLine( w, h + crosshair_size:GetInt(), w, h - crosshair_size:GetInt() )
			end
		end
		if GetConVarNumber("Crosshair_Style") == 2 then
			if GetConVarNumber(rook.."Crosshair_RGB") == 0 then
				surface.DrawCircle( w, h, crosshair_size:GetInt(), crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt() )
			else
				local time = CurTime()
				local speed = 1
				local offset = 0
				local lightness = 255
				local base_value = time * speed + offset
				local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
				local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
				local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
				local color = Color(r, g, b, crosshair_a:GetInt())
				surface.DrawCircle( w, h, crosshair_size:GetInt(), color )
			end
		end
		if GetConVarNumber("Crosshair_Style") == 3 then
			if GetConVarNumber(rook.."Crosshair_RGB") == 0 then
				surface.DrawCircle( w, h, crosshair_size:GetInt(), crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt() )
				surface.SetDrawColor(crosshair_r:GetInt(), crosshair_g:GetInt(), crosshair_b:GetInt(), crosshair_a:GetInt())
				surface.DrawLine( w + crosshair_size:GetInt(), h, w - crosshair_size:GetInt(), h )
				surface.DrawLine( w, h + crosshair_size:GetInt(), w, h - crosshair_size:GetInt() )
			else
				local time = CurTime()
				local speed = 1
				local offset = 0
				local lightness = 255
				local base_value = time * speed + offset
				local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
				local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
				local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
				local color = Color(r, g, b, crosshair_a:GetInt())
				surface.DrawCircle( w, h, crosshair_size:GetInt(), color )
				surface.SetDrawColor(color)
				surface.DrawLine( w + crosshair_size:GetInt(), h, w - crosshair_size:GetInt(), h )
				surface.DrawLine( w, h + crosshair_size:GetInt(), w, h - crosshair_size:GetInt() )
			end
		end
	else
		RunConsoleCommand( "hud_draw_fixed_reticle", "0" )
	end
end)
-- Traitor Detector --
hook.Add( "HUDPaint", "TTT", function()
	local tindent = tindent or 0
	if (GetConVarNumber(rook.."TTT") == 1) then
		for k, v in pairs ( player.GetAll() ) do
			if UtilityCheck(v) == true then
				if v:HasWeapon("weapon_ttt_knife") or v:HasWeapon("Disguise") or v:HasWeapon("Discombobulator") or v:HasWeapon("weapon_ttt_silencedsniper") or v:HasWeapon("weapon_ttt_turtlenade") or v:HasWeapon("weapon_ttt_death_station") or v:HasWeapon("weapon_ttt_sg552") or v:HasWeapon("weapon_ttt_tripmine") or v:HasWeapon("weapon_ttt_sipistol") or v:HasWeapon("weapon_ttt_newtonlauncher") or v:HasWeapon("weapon_ttt_c4") or v:HasWeapon("spiderman's_swep") or v:HasWeapon("weapon_ttt_trait_defilibrator") or v:HasWeapon("weapon_ttt_xbow") or v:HasWeapon("weapon_ttt_dhook") or v:HasWeapon("weapon_awp") or v:HasWeapon("weapon_ttt_ak47") or v:HasWeapon("weapon_jihadbomb") or v:HasWeapon("weapon_ttt_decoy") or v:HasWeapon("weapon_ttt_flaregun") or v:HasWeapon("weapon_ttt_phammer") or v:HasWeapon("weapon_ttt_push") or v:HasWeapon("weapon_ttt_radio") or v:HasWeapon("weapon_ttt_teleport") or v:HasWeapon("weapon_ttt_awp") or v:HasWeapon("weapon_real_cs_g3sg1") or v:HasWeapon("weapon_ttt_healthstation5") or v:HasWeapon("weapon_ttt_cvg_g3sg1") or v:HasWeapon("weapon_ttt_g3sg1") or v:HasWeapon("weapon_ttt_sentry") or v:HasWeapon("weapon_ttt_poison_dart") or v:HasWeapon("weapon_ttt_trait_defibrillator") then
					local plyName = v:Nick()
					local plyPos = v:GetPos()
					local plyinfopos = ( plyPos + Vector( 0, 0, 90 )):ToScreen()
					draw.SimpleTextOutlined("[Traitor] "..v:GetName(), "BigTextForHUD", 5, 450+tindent, Color(255, 0, 0), TEXT_ALIGN_LEFT, 1, 1, Color( 0, 0, 0 ) )
					tindent = tindent +30
				end
			end
		end
	end
end)
-- Murder Detector --
hook.Add( "HUDPaint", "Murder", function()
	local mindent = mindent or 0
	local dindent = dindent or 0
	if (GetConVarNumber(rook.."Murder") == 1) and string.find(engine.ActiveGamemode(), "murder") or string.find(engine.ActiveGamemode(), "Murder") then
		for k, v in pairs(player.GetAll()) do
			if UtilityCheck(v) == true then
				for _, weapon in pairs(v:GetWeapons()) do
					if string.find(weapon:GetClass(), "knife") then
						local plyName = v:Nick()
						local plyPos = v:GetPos()
						local plyinfopos = (plyPos + Vector(0, 0, 90)):ToScreen()
						draw.SimpleTextOutlined("[Murderer] " .. v:GetName(), "BigTextForHUD", 5, 450+mindent, Color(255, 0, 0), TEXT_ALIGN_LEFT, 1, 1, Color(0, 0, 0))
						mindent = mindent +30
					end
					if string.find(weapon:GetClass(), "rev") or string.find(weapon:GetClass(), "pis") or string.find(weapon:GetClass(), "mag") or string.find(weapon:GetClass(), "ray") or string.find(weapon:GetClass(), "Ray") or string.find(weapon:GetClass(), "Rev") or string.find(weapon:GetClass(), "Pis") or string.find(weapon:GetClass(), "Mag") or string.find(weapon:GetClass(), "Gun") or string.find(weapon:GetClass(), "gun") or string.find(weapon:GetClass(), "dea") or string.find(weapon:GetClass(), "Dea") then
						local plyName = v:Nick()
						local plyPos = v:GetPos()
						local plyinfopos = (plyPos + Vector(0, 0, 90)):ToScreen()
						draw.SimpleTextOutlined("[Detective] " .. v:GetName(), "BigTextForHUD", 5, 650+dindent, Color(0, 0, 255), TEXT_ALIGN_LEFT, 1, 1, Color(0, 0, 0))
						dindent = dindent +30
					end
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
					if ESPColorStyle == 1 then
						local plyDistance = "Distance: "..math.Round(((ply:GetPos():Distance( v:GetPos()))))
						draw.SimpleText( plyDistance, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 8, Color(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt()), 1, 1, 1, Color( 0, 0, 0 ) )
						draw.SimpleText( plyName, "SmallTextForHUD", plyinfopos.x, plyinfopos.y - 50, Color(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt()), 1, 1, 1, Color( 0, 0, 0 ) )
					elseif ESPColorStyle == 2 then
						local plyDistance = "Distance: "..math.Round(((ply:GetPos():Distance( v:GetPos()))))
						local color = (team.GetColor(v:Team()))
						draw.SimpleText( plyDistance, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 8, Color(color.r, color.g, color.b, espcolor_a:GetInt()), 1, 1, 1, Color( 0, 0, 0 ) )
						draw.SimpleText( plyName, "SmallTextForHUD", plyinfopos.x, plyinfopos.y - 50, Color(color.r, color.g, color.b, espcolor_a:GetInt()), 1, 1, 1, Color( 0, 0, 0 ) )
					else
						local time = CurTime()
						local speed = 1
						local offset = 0
						local lightness = 255
						local base_value = time * speed + offset
						local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
						local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
						local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
						local color = Color(r, g, b, espcolor_a:GetInt())
						draw.SimpleText( plyName, "SmallTextForHUD", plyinfopos.x, plyinfopos.y - 50, color, 1, 1, 1, Color( 0, 0, 0 ) )
						local plyDistance = "Distance: "..math.Round(((ply:GetPos():Distance( v:GetPos()))))
						draw.SimpleText( plyDistance, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 8, color, 1, 1, 1, Color( 0, 0, 0 ) )
					end
					local job = team.GetName(v:Team())
					local teamcolor = team.GetColor(v:Team())
					draw.SimpleText( job, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 24, Color(teamcolor.r, teamcolor.g, teamcolor.b, espcolor_a:GetInt()), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyGroup = "Rank: " .. v:GetUserGroup()
					draw.SimpleText( plyGroup, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 32, Color( 255, 255, 255, espcolor_a:GetInt() ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyHP = "HP: " .. v:Health() 
					draw.SimpleText( plyHP, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 0, Color( 255, 0, 0, espcolor_a:GetInt() ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyARMOR = "Armor: " .. v:Armor()
					draw.SimpleText( plyARMOR, "PlayerInfoText", plyinfopos.x, plyinfopos.y + 8, Color( 0, 255, 155, espcolor_a:GetInt() ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plySTEAM = "SteamID: " .. v:SteamID()
					draw.SimpleText( plySTEAM, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 39, Color( 255, 255, 255, espcolor_a:GetInt() ), 1, 1, 1, Color( 0, 0, 0 ) )
					local plyPING = "Ping: " .. v:Ping()
					draw.SimpleText( plyPING, "PlayerInfoText", plyinfopos.x, plyinfopos.y - 16, Color( 255, 255, 255, espcolor_a:GetInt() ), 1, 1, 1, Color( 0, 0, 0 ) )
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
return minX, minY, maxX, maxY end
hook.Add( "HUDPaint", "2DBoxESP", function()
	for k, v in pairs ( player.GetAll() ) do
		local function DrawHABar(ent, x, y, w, h)
			local health = ent:Health()
			local armor = ent:Armor()
			local maxHealth = ent:GetMaxHealth()
			local maxArmor = ent:GetMaxArmor()
			local healthRatio = health / maxHealth
			local armorRatio = armor / maxArmor
			local percent = health / 100
			local apercent = armor / 100
			if ESPColorStyle == 1 then
				surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
			elseif ESPColorStyle == 2 then
				if team.GetColor(v:Team()) == nil then
					surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
				else
					surface.SetDrawColor(team.GetColor(v:Team()))
				end
			else
				local time = CurTime()
				local speed = 1
				local offset = 0
				local lightness = 255
				local base_value = time * speed + offset
				local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
				local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
				local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
				surface.SetDrawColor(r, g, b)
			end
			surface.DrawOutlinedRect(x, y, w, h)
			surface.DrawOutlinedRect(x, y+6, w, h)
			if percent >= 0.5 then
				surface.SetDrawColor(0, 255 * percent, 0)
			else
				surface.SetDrawColor(255 * percent, 0, 0)
			end
			if healthRatio >= 1 then
				surface.DrawRect(x+1, y+1, (w-2)*1, h-2)
			else 
				surface.DrawRect(x+1, y+1, (w-2)*healthRatio, h-2)
			end
			surface.SetDrawColor(0, 75, 255 * apercent)
			if armorRatio >= 1 then
				surface.DrawRect(x+1, y+h+3, (w-2)*1, h-2)
			else
				surface.DrawRect(x+1, y+h+3, (w-2)*armorRatio, h-2)
			end
		end
		local plydistance = math.Round((ply:GetPos():Distance( v:GetPos())))
		if plydistance < renderdist:GetInt() then
			if GetConVarNumber(rook.."2DBoxESP") == 1 then
				if UtilityCheck(v) == true then
					if ESPColorStyle == 1 then
						surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
					elseif ESPColorStyle == 2 then
						surface.SetDrawColor(team.GetColor(v:Team()))
					else
						local time = CurTime()
						local speed = 1
						local offset = 0
						local lightness = 255
						local base_value = time * speed + offset
						local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
						local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
						local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
						surface.SetDrawColor(r, g, b)
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
					local barHeight = 5
                    local barY = y2 + barHeight + 2
                    DrawHABar(v, x1+.7, barY, x2-x1, barHeight)
				end
			end
		end
	end
end)
-- 3DBoxESP --
hook.Add("HUDPaint", "3DBoxESP", function()
    for k, v in pairs(player.GetAll()) do
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
					elseif ESPColorStyle == 2 then
						if team.GetColor(v:Team()) == nil then
							render.DrawWireframeBox( plyPos, Angle( 0, eye.y, 0), feet, head, Color( espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt() ) )
						else
							local color = team.GetColor(v:Team())
							render.DrawWireframeBox(plyPos, Angle(0, eye.y, 0), feet, head, Color(color.r, color.g, color.b))
						end
					else
						local time = CurTime()
						local speed = 1
						local offset = 0
						local lightness = 255
						local base_value = time * speed + offset
						local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
						local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
						local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
						render.DrawWireframeBox( plyPos, Angle( 0, eye.y, 0), feet, head, Color(r, g, b, 255) )
					end
					cam.End3D()
					local function DrawHABar(ent, x, y, w, h)
						local health = ent:Health()
						local armor = ent:Armor()
						local maxHealth = ent:GetMaxHealth()
						local maxArmor = ent:GetMaxArmor()
						local healthRatio = health / maxHealth
						local armorRatio = armor / maxArmor
						local percent = health / 100
						local apercent = armor / 100
						if ESPColorStyle == 1 then
							surface.SetDrawColor(espcolor_r:GetInt(), espcolor_g:GetInt(), espcolor_b:GetInt(), espcolor_a:GetInt())
						elseif ESPColorStyle == 2 then
							surface.SetDrawColor(team.GetColor(v:Team()))
						else
							local time = CurTime()
							local speed = 1
							local offset = 0
							local lightness = 255
							local base_value = time * speed + offset
							local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
							local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
							local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
							surface.SetDrawColor(r, g, b)
						end
						surface.DrawOutlinedRect(x, y, w, h)
						surface.DrawOutlinedRect(x, y+6, w, h)
						if percent >= 0.5 then
							surface.SetDrawColor(0, 255 * percent, 0)
						else
							surface.SetDrawColor(255 * percent, 0, 0)
						end
						if healthRatio >= 1 then
							surface.DrawRect(x+1, y+1, (w-2)*1, h-2)
						else 
							surface.DrawRect(x+1, y+1, (w-2)*healthRatio, h-2)
						end
						surface.SetDrawColor(0, 75, 255 * apercent)
						if armorRatio >= 1 then
							surface.DrawRect(x+1, y+h+3, (w-2)*1, h-2)
						else
							surface.DrawRect(x+1, y+h+3, (w-2)*armorRatio, h-2)
						end
					end
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
					local x1,y1,x2,y2 = CornerCords(v)
					local barHeight = 5
                    local barY = y2 + barHeight + 2
                    DrawHABar(v, x1+.7, barY, x2-x1, barHeight)
				end
			end
		end
	end
end)
-- Speedometer --
hook.Add( "HUDPaint", "Speedometer", function()
	if GetConVarNumber(rook.."Speedometer") == 1 and GetConVarNumber(rook.."HUD") == 1 then
		local plyspeed = math.Round(ply:GetVelocity():Length())
		draw.SimpleTextOutlined( "Speed: "..plyspeed, "BigTextForHUD", SizeW/500,  SizeH/7.5,  Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color( 0, 0 , 0 ))
	end
end)
-- FPS Counter --
hook.Add("HUDPaint" , "FPSCounter" , function()
  if GetConVarNumber(rook.."FPSCounter") == 1 and GetConVarNumber(rook.."HUD") == 1 then
        FPS = math.Round(1/RealFrameTime()) 
		draw.SimpleTextOutlined( "FPS: "..FPS, "BigTextForHUD", SizeW/500,  SizeH/5.2,  Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color( 0, 0 , 0 ))
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
						elseif ESPColorStyle == 2 then
							render.SetColorModulation(255, 255, 255)
						else
							local time = CurTime()
							local speed = 1
							local offset = 0
							local lightness = 255
							local base_value = time * speed + offset
							local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
							local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
							local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
							render.SetColorModulation(r, g, b)
						end
					render.SetBlend(0.03)
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
local OGPhysColor = nil
local Num = 0
local function rainbow()
	local time = CurTime()
	local speed = 1
	local offset = 0
	local lightness = 1
	local base_value = time * speed + offset
	local r = ( 0.5 * (math.sin(base_value - 2)	+ 1) ) * lightness
	local g = ( 0.5 * (math.sin(base_value + 2)	+ 1) ) * lightness
	local b = ( 0.5 * (math.sin(base_value)		+ 1) ) * lightness
    if GetConVarNumber(rook.."rainbowphys") == 1 then
        Num = Num + 1
        ply:SetWeaponColor(Vector(r, g, b))
        Num = 0
    end
end
local function toggleRainbowPhys(enabled)
    if enabled then
        OGPhysColor = ply:GetWeaponColor()
        hook.Add("CreateMove", "rainbowphys", rainbow)
    else
        hook.Remove("CreateMove", "rainbowphys")
        if OGPhysColor ~= nil then
            ply:SetWeaponColor(OGPhysColor)
            OGPhysColor = nil
        end
        Num = 0
    end
end
if GetConVarNumber(rook.."rainbowphys") == 1 then
    toggleRainbowPhys(true)
end
cvars.AddChangeCallback(rook.."rainbowphys", function() 
    toggleRainbowPhys(GetConVarNumber(rook.."rainbowphys") == 1)
end)
-- Admin List / Spectator List --
StaffCheck = {}
hook.Add("HUDPaint", "AdminList", function()
	if GetConVarNumber(rook.."AdminList") == 1 and GetConVarNumber(rook.."HUD") == 1 then
		local indent = indent or 0
		for k, v in pairs(player.GetAll()) do
			if PermissionCheck(v) == true then
				draw.SimpleTextOutlined("["..v:GetUserGroup().."] "..v:GetName(), "BigTextForHUD", 5, 250+indent, Color(255, 102, 102), TEXT_ALIGN_LEFT, 1, 1, Color( 0, 0, 0 ) )
				indent = indent +30
			end
		end
	end
end)
-- Entity ESP --
hook.Add("Think", "EntTrack", function()
	for k, v in pairs(ents.GetAll()) do
		if not table.HasValue(OtherEnts, v:GetClass()) or OtherEnts == nil then
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
				for i, p in pairs(EntsToShow) do
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
	DP:SetSkin("Default")
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
	mainmsg:OpenURL( "https://i.imgur.com/OYl1dY0.png" )
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
	local visualmsg = vgui.Create( "HTML" ) 
	visualmsg:SetParent( panel2 )
	visualmsg:SetPos( -25, 0 )
	visualmsg:SetSize( 600, 35 )
	visualmsg:SizeToContents()
	visualmsg:OpenURL( "https://i.imgur.com/l3lWNWk.png" )
	local Visualcheat1 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat1:SetPos( 10,40 )
	Visualcheat1:SetText( "HUD" )
	Visualcheat1:SetConVar( rook.."HUD" )
	Visualcheat1:SizeToContents()
	local Visualcheat2 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat2:SetPos( 25,60 )
	Visualcheat2:SetText( "Speedometer" )
	Visualcheat2:SetConVar( rook.."Speedometer" )
	Visualcheat2:SizeToContents()
	local Visualcheat3 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat3:SetPos( 25,80 )
	Visualcheat3:SetText( "FPS Counter" )
	Visualcheat3:SetConVar( rook.."FPSCounter" )
	Visualcheat3:SizeToContents()
	local Visualcheat4 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat4:SetPos( 25,100 )
	Visualcheat4:SetText( "Admin/Staff Detector" )
	Visualcheat4:SetConVar( rook.."AdminList" )
	Visualcheat4:SizeToContents()
	local Visualcheat5 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat5:SetPos( 175,40 )
	Visualcheat5:SetText( "2D Box ESP" )
	Visualcheat5:SetConVar( rook.."2DBoxESP" )
	Visualcheat5:SizeToContents()
	local Visualcheat6 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat6:SetPos( 175,60 )
	Visualcheat6:SetText( "3D Box ESP" )
	Visualcheat6:SetConVar( rook.."3DBoxESP" )
	Visualcheat6:SizeToContents()
	local Visualcheat7 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat7:SetPos( 175,80 )
	Visualcheat7:SetText( "Prop ESP" )
	Visualcheat7:SetConVar( rook.."PropESP" )
	Visualcheat7:SizeToContents()
	local Visualcheat8 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat8:SetPos( 175,100 )
	Visualcheat8:SetText( "Player Info" )
	Visualcheat8:SetConVar( rook.."PlayerInfo" )
	Visualcheat8:SizeToContents()
	local Visualcheat9 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat9:SetPos( 175,120 )
	Visualcheat9:SetText( "Chams" )
	Visualcheat9:SetConVar( rook.."Chams" )
	Visualcheat9:SizeToContents()
	local Visualcheat10 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat10:SetPos( 175,140 )
	Visualcheat10:SetText( "Skeleton ESP" )
	Visualcheat10:SetConVar( rook.."SkeletonESP" )
	Visualcheat10:SizeToContents()
	local Visualcheat11 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat11:SetPos( 175,160 )
	Visualcheat11:SetText( "Eye Tracer" )
	Visualcheat11:SetConVar( rook.."EyeTracker" )
	Visualcheat11:SizeToContents()
	local Visualcheat12 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat12:SetPos( 175,180 )
	Visualcheat12:SetText( "Tracers" )
	Visualcheat12:SetConVar( rook.."Tracer" )
	Visualcheat12:SizeToContents()
	local Visualcheat13 = vgui.Create( "DCheckBoxLabel", panel2 )
	Visualcheat13:SetPos( 380,40 )
	Visualcheat13:SetText( "Entity ESP" )
	Visualcheat13:SetConVar( rook.."EntityESP" )
	Visualcheat13:SizeToContents()
    local DermaList = vgui.Create( "DPanelList", panel2 )
    DermaList:SetPos( 280,60 )
    DermaList:SetSize( 300, 360 )
    DermaList:SetSpacing( 75 )
    DermaList:EnableHorizontal( false )
    DermaList:EnableVerticalScrollbar( true )
    local SelectedEnts = vgui.Create("DListView")
    SelectedEnts:SetSize(125, 180)
    SelectedEnts:SetPos(0, 0)
    SelectedEnts:SetMultiSelect(false)
    SelectedEnts:AddColumn("Shown Entities")
    for k,v in pairs(EntsToShow) do 
		SelectedEnts:AddLine(v) 
	end
    DermaList:Add(SelectedEnts)
    local AllEnts = vgui.Create("DListView")
    AllEnts:SetSize(125, 180)
    AllEnts:SetPos(150, 0)
    AllEnts:SetMultiSelect(false)
    AllEnts:AddColumn("Hidden Entities")
    for k,v in pairs(OtherEnts) do 
		if not table.HasValue( EntsToShow, v ) then
			AllEnts:AddLine(v) 
		end
	end
    DermaList:Add(AllEnts)
	AllEnts.DoDoubleClick = function(parent, index, list)
		local v = OtherEnts[index]
		table.insert(EntsToShow, v)
		table.remove(OtherEnts, index)
		SelectedEnts:AddLine(v)
		parent:RemoveLine(index)
	end
	SelectedEnts.DoDoubleClick = function(parent, index, list)
		local selectedIndex = parent:GetSelectedLine()
		local v = EntsToShow[selectedIndex]
		if not table.HasValue(OtherEnts, v) then
			table.insert(OtherEnts, v)
		end
		table.remove(EntsToShow, selectedIndex)
		AllEnts:AddLine(v)
		for i, val in ipairs(OtherEnts) do
			if val == v then
				parent:RemoveLine(selectedIndex)
				break
			end
		end
		index = nil
		for i, val in ipairs(EntsToShow) do
			if val == v then
				index = i
				break
			end
		end
		if index then
			SelectedEnts:AddLine(v)
			for i, val in ipairs(OtherEnts) do
				if val == v then
					AllEnts:SelectItem(index-1)
					break
				end
			end
		end
	end
	local aimtab = vgui.Create( "HTML" ) 
	aimtab:SetParent( panel3 )
	aimtab:SetPos( -25, 0 )
	aimtab:SetSize( 600, 35 )
	aimtab:SizeToContents()
	aimtab:OpenURL( "https://i.imgur.com/pRSYQGN.png" )
	local Aimcheat1 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat1:SetPos( 10,40 )
	Aimcheat1:SetText( "Aimbot" )
	Aimcheat1:SetConVar( rook.."Aimbot" )
	Aimcheat1:SizeToContents()
	local Aimcheat9 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat9:SetPos( 95,40 )
	Aimcheat9:SetText( "FOV Aimbot" )
	Aimcheat9:SetConVar( rook.."FOV_Aimbot" )
	Aimcheat9:SizeToContents()
	local Aimcheat2 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat2:SetPos( 30,55 )
	Aimcheat2:SetText( "Ignore Friends" )
	Aimcheat2:SetConVar( rook.."Aimbot_Ignore_Friends" )
	Aimcheat2:SizeToContents()
	local Aimcheat3 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat3:SetPos( 30,75 )
	Aimcheat3:SetText( "Ignore Team" )
	Aimcheat3:SetConVar( rook.."Aimbot_Ignore_Team" )
	Aimcheat3:SizeToContents()
	local Aimcheat4 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat4:SetPos( 30,95 )
	Aimcheat4:SetText( "Ignore Through Walls" )
	Aimcheat4:SetConVar( rook.."Aimbot_Ignore_Through_Walls" )
	Aimcheat4:SizeToContents()
	local Aimcheat5 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat5:SetPos( 30,115 )
	Aimcheat5:SetText( "Ignore Staff" )
	Aimcheat5:SetConVar( rook.."Aimbot_Ignore_Staff" )
	Aimcheat5:SizeToContents()
	local Aimcheat6 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat6:SetPos( 30,135 )
	Aimcheat6:SetText( "Ignore Ghosts" )
	Aimcheat6:SetConVar( rook.."Aimbot_Ignore_Ghosts" )
	Aimcheat6:SizeToContents()
	local Aimcheat7 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat7:SetPos( 30,155 )
	Aimcheat7:SetText( "Whitelist" )
	Aimcheat7:SetConVar( rook.."Aimbot_Whitelist" )
	Aimcheat7:SizeToContents()
	local Aimcheat8 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat8:SetPos( 380,40 )
	Aimcheat8:SetText( "Aim Assist" )
	Aimcheat8:SetConVar( rook.."AimAssist" )
	Aimcheat8:SizeToContents()
	local AimBoneSelector = vgui.Create( "DComboBox", panel3 )
	AimBoneSelector:SetPos( 200, 40 )
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
	local DermaList = vgui.Create( "DPanelList", panel3 )
	DermaList:SetPos( 200,61 )
	DermaList:SetSize( 200, 250 )
	DermaList:SetSpacing( 75 )
	DermaList:EnableHorizontal( false )
	DermaList:EnableVerticalScrollbar( true )
	-- Aimbot --
	SelectedPlayers = vgui.Create("DListView")
	SelectedPlayers:SetSize(75, 110)
	SelectedPlayers:SetPos(0, 0)
	SelectedPlayers:SetMultiSelect(false)
	SelectedPlayers:AddColumn("Whitelisted")
	local AllPlayers = vgui.Create("DListView")
	AllPlayers:SetSize(75, 110)
	AllPlayers:SetPos(75, 0)
	AllPlayers:SetMultiSelect(false)
	AllPlayers:AddColumn("Players")
	for _, v in pairs(player.GetAll()) do
		if UtilityCheck(v) == true and not table.HasValue( NoShootGuys, v ) then
			local line = AllPlayers:AddLine(v:Nick())
			line.player = v 
		end
	end
	AllPlayers.DoDoubleClick = function(parent, index, list)
		local line = parent:GetLine(index)
		local player = line.player 
		table.insert(NoShootGuys, player) 
		table.remove(OtherPlayers, table.KeyFromValue(OtherPlayers, player))
		line.player = nil
		local selectedLine = SelectedPlayers:AddLine(player:Nick())
		selectedLine.player = player 
		parent:RemoveLine(index)
	end
	for _, v in pairs(NoShootGuys) do
		if UtilityCheck(v) == true and not table.HasValue( OtherPlayers, v ) then
			local line = SelectedPlayers:AddLine(v:Nick())
			line.player = v
		end
	end
	SelectedPlayers.DoDoubleClick = function(parent, index, list)
		local line = parent:GetLine(index)
		local player = line.player
		table.insert(OtherPlayers, player) 
		table.remove(NoShootGuys, table.KeyFromValue(NoShootGuys, player))
		line.player = nil
		local allLine = AllPlayers:AddLine(player:Nick())
		allLine.player = player 
		parent:RemoveLine(index)
	end
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
		local NearestTargetDist = math.huge
		if GetConVarNumber(rook.."Aimbot") == 1 then
			if input.IsButtonDown(AimKey) and ply:IsTyping() == false then
				for k, v in pairs( player.GetAll() ) do
					if UtilityCheck(v) == true then
						if GetConVarNumber(rook.."FOV_Aimbot") == 0 then
							local TargetDist = ( Vector( ply:GetPos() ):Distance( Vector( v:GetPos() ) ) )
							if TargetDist > 0 and TargetDist < NearestTargetDist then
								if GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 1 and v:IsPlayer() and v:GetFriendStatus() == "none" or GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 0 then 
									if GetConVarNumber(rook.."Aimbot_Ignore_Staff") == 1 and PermissionCheck(v) == false or GetConVarNumber(rook.."Aimbot_Ignore_Staff") == 0 then
										if GetConVarNumber(rook.."Aimbot_Ignore_Ghosts") == 1 and GhostCheck(v) == false or GetConVarNumber(rook.."Aimbot_Ignore_Ghosts") == 0 then
											if GetConVarNumber(rook.."Aimbot_Ignore_Team") == 1 and v:IsPlayer() and v:Team() ~= ply:Team() or GetConVarNumber(rook.."Aimbot_Ignore_Team") == 0 then 
												local trace = util.TraceLine( {
													start = ply:GetShootPos(),
													endpos = v:GetPos(),
													filter = function( ent ) if ( ent:GetClass() == "prop_physics" ) then return true end end
												} )
												if trace and (GetConVarNumber(rook.."Aimbot_Ignore_Through_Walls") == 1 and trace.Fraction == 1 or GetConVarNumber(rook.."Aimbot_Ignore_Through_Walls") == 0) then
													if GetConVarNumber(rook.."Aimbot_Whitelist") == 1 and not table.HasValue(NoShootGuys, v) or GetConVarNumber(rook.."Aimbot_Whitelist") == 0 then
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
						end
						if GetConVarNumber(rook.."FOV_Aimbot") == 1 then
							local screenCenter = Vector(ScrW() / 2, ScrH() / 2, 0)
							local closestDist = math.huge
							local closestPlayer = nil
							for k, v in pairs(player.GetAll()) do
								if UtilityCheck(v) == true then
									if GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 1 and v:IsPlayer() and v:GetFriendStatus() == "none" or GetConVarNumber(rook.."Aimbot_Ignore_Friends") == 0 then 
										if GetConVarNumber(rook.."Aimbot_Ignore_Staff") == 1 and PermissionCheck(v) == false or GetConVarNumber(rook.."Aimbot_Ignore_Staff") == 0 then
											if GetConVarNumber(rook.."Aimbot_Ignore_Ghosts") == 1 and GhostCheck(v) == false or GetConVarNumber(rook.."Aimbot_Ignore_Ghosts") == 0 then
												if GetConVarNumber(rook.."Aimbot_Ignore_Team") == 1 and v:IsPlayer() and v:Team() ~= ply:Team() or GetConVarNumber(rook.."Aimbot_Ignore_Team") == 0 then 
													local trace = util.TraceLine({
														start = ply:GetShootPos(),
														endpos = v:GetPos(),
														filter = function(ent) if ent:GetClass() == "prop_physics" then return true end end
													})
													if trace and (GetConVarNumber(rook.."Aimbot_Ignore_Through_Walls") == 1 and trace.Fraction == 1 or GetConVarNumber(rook.."Aimbot_Ignore_Through_Walls") == 0) then
														if GetConVarNumber(rook.."Aimbot_Whitelist") == 1 and not table.HasValue(NoShootGuys, v) or GetConVarNumber(rook.."Aimbot_Whitelist") == 0 then
															local bone = v:LookupBone(AimBone)
															local targetPos = bone and v:GetBonePosition(bone) or v:EyePos()
															local screenPos = targetPos:ToScreen()
															local dist = screenCenter:Distance(Vector(screenPos.x, screenPos.y, 0))
															if dist < closestDist then
																closestDist = dist
																closestPlayer = v
															end
														end
													end
												end
											end
										end
									end
								end
							end
							if closestPlayer ~= nil then
								local bone = closestPlayer:LookupBone(AimBone)
								local targetPos = bone and closestPlayer:GetBonePosition(bone) or closestPlayer:EyePos()
								ply:SetEyeAngles((targetPos - ply:GetShootPos()):Angle())
							end
						end
					end
				end
			end
		end
	end)
	DermaList:Add(SelectedPlayers)
	DermaList:Add(AllPlayers)
	DermaList:Add(SelectedPlayers)
	DermaList:Add(AllPlayers)
	local Aimcheat7 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat7:SetPos( 380,60 )
	Aimcheat7:SetText( "Trigger Bot" )
	Aimcheat7:SetConVar( rook.."TriggerBot" )
	Aimcheat7:SizeToContents()
	local Aimcheat8 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat8:SetPos( 400,80 )
	Aimcheat8:SetText( "Ignore Friends" )
	Aimcheat8:SetConVar( rook.."TriggerBot_Ignore_Friends" )
	Aimcheat8:SizeToContents()
	local Aimcheat9 = vgui.Create( "DCheckBoxLabel", panel3 )
	Aimcheat9:SetPos( 400,100 )
	Aimcheat9:SetText( "Ignore Team" )
	Aimcheat9:SetConVar( rook.."TriggerBot_Ignore_Team" )
	Aimcheat9:SizeToContents()
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
	aimkeymsg:OpenURL( "https://i.imgur.com/Vf4jbRT.png" )
	local misctab = vgui.Create( "HTML" ) 
	misctab:SetParent( panel4 )
	misctab:SetPos( -25, 0 )
	misctab:SetSize( 600, 35 )
	misctab:SizeToContents()
	misctab:OpenURL( "https://i.imgur.com/c2IV899.png" )
	local Misccheat1 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat1:SetPos( 10,40 )
	Misccheat1:SetText( "Flashlight Spammer" )
	Misccheat1:SetConVar( rook.."FlashlightSpam" )
	Misccheat1:SizeToContents()
	local Misccheat2 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat2:SetPos( 10,60 )
	Misccheat2:SetText( "Rainbow Physgun" )
	Misccheat2:SetConVar( rook.."rainbowphys" )
	Misccheat2:SizeToContents()
	local Misccheat3 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat3:SetPos( 380,40 )
	Misccheat3:SetText( "Third Person" )
	Misccheat3:SetConVar( rook.."ThirdPerson" )
	Misccheat3:SizeToContents()
	local Misccheat4 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat4:SetPos( 380,60 )
	Misccheat4:SetText( "Custom FOV" )
	Misccheat4:SetConVar( rook.."CustomFOV" )
	Misccheat4:SizeToContents()
	local FOVSlider = vgui.Create( "DNumSlider", panel4 )
	FOVSlider:SetPos( 380, 80 )
	FOVSlider:SetSize( 190, 25 )
	FOVSlider:SetText( "FOV" )
	FOVSlider:SetMin( 10 )
	FOVSlider:SetMax( 160 )
	FOVSlider:SetDecimals( 0 )
	FOVSlider:SetValue( 120 )
	FOVSlider:SetConVar( "FOVSlider" )
	local Misccheat6 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat6:SetPos( 195,40 )
	Misccheat6:SetText( "Auto Bunny Hop (BHop)" )
	Misccheat6:SetConVar( rook.."BHop" )
	Misccheat6:SizeToContents()
	local Misccheat7 = vgui.Create( "DCheckBoxLabel", panel4 )
	Misccheat7:SetPos( 215,60 )
	Misccheat7:SetText( "BHop Anticheat Mode" )
	Misccheat7:SetConVar( rook.."BHop_AC" )
	Misccheat7:SizeToContents()
	local chattab = vgui.Create( "HTML" ) 
	chattab:SetParent( panel5 )
	chattab:SetPos( -25, 0 )
	chattab:SetSize( 215, 35 )
	chattab:SizeToContents()
	chattab:OpenURL( "https://i.imgur.com/Dt87MOr.png" )
	local Chatcheat1 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat1:SetPos( 10,40 )
	Chatcheat1:SetText( "Chat Spammer" )
	Chatcheat1:SetConVar( rook.."ChatSpam" )
	Chatcheat1:SizeToContents()
	local Chatcheat2 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat2:SetPos( 30,60 )
	Chatcheat2:SetText( "DarkRP Mode (/ooc)" )
	Chatcheat2:SetConVar( rook.."ChatSpam_DarkRP" )
	Chatcheat2:SizeToContents()
	local Chatcheat3 = vgui.Create( "DCheckBoxLabel", panel5 )
	Chatcheat3:SetPos( 30,80 )
	Chatcheat3:SetText( "Admin Mode (@)" )
	Chatcheat3:SetConVar( rook.."ChatSpam_Admin" )
	Chatcheat3:SizeToContents()
	local chatbox = vgui.Create( "HTML" ) 
	chatbox:SetParent( panel5 )
	chatbox:SetPos( 165, 0 )
	chatbox:SetSize( 395, 245 )
	chatbox:SizeToContents()
	chatbox:OpenURL( "https://rook-scripts.chatovod.com/" )
	chatbox:OpenURL("https://rook-scripts.chatovod.com/")
	local GamemodeCheat1State = GetConVarNumber(rook.."Murder")
	local GamemodeCheat2State = GetConVarNumber(rook.."TTT")
	local GamemodeCheat1 = vgui.Create("DButton", panel6)
	GamemodeCheat1:SetPos(10, 10)
	GamemodeCheat1:SetSize(540, 105)
	GamemodeCheat1:SetTextColor( Color(255,255,255) )
	GamemodeCheat1:SetText("Murderer & Detective Detector", TEXT_ALIGN_CENTER)
	GamemodeCheat1:SetFont("BigTextForHUD")
	GamemodeCheat1:SetToolTip("Toggle Murderer Detector")
	if GamemodeCheat1State == 1 then
		local color = Color(100, 125, 100)
		GamemodeCheat1.Paint = function(self, w, h)
			draw.RoundedBox(8, 0, 0, w, h, color)
		end
	else
		local color = Color(125, 100, 100)
			GamemodeCheat1.Paint = function(self, w, h)
			draw.RoundedBox(8, 0, 0, w, h, color)
		end
	end
	GamemodeCheat1.DoClick = function()
		GamemodeCheat1State = not GamemodeCheat1State
		RunConsoleCommand(rook.."Murder", GamemodeCheat1State and 1 or 0)
		local color = GamemodeCheat1State and Color(100, 125, 100) or Color(125, 100, 100)
		GamemodeCheat1.Paint = function(self, w, h)
		draw.RoundedBox(8, 0, 0, w, h, color)
		end
	end
	local GamemodeCheat2 = vgui.Create("DButton", panel6)
	GamemodeCheat2:SetPos(10, 125)
	GamemodeCheat2:SetSize(540, 105)
	GamemodeCheat2:SetTextColor( Color(255,255,255) )
	GamemodeCheat2:SetText("Traitor Detector", TEXT_ALIGN_CENTER)
	GamemodeCheat2:SetFont("BigTextForHUD")
	GamemodeCheat2:SetToolTip("Toggle Traitor Detector")
	if GamemodeCheat2State == 1 then
		local color = Color(100, 125, 100)
		GamemodeCheat2.Paint = function(self, w, h)
		draw.RoundedBox(8, 0, 0, w, h, color)
		end
	else
		local color = Color(125, 100, 100)
		GamemodeCheat2.Paint = function(self, w, h)
		draw.RoundedBox(8, 0, 0, w, h, color)
		end
	end
	GamemodeCheat2.DoClick = function()
		GamemodeCheat2State = not GamemodeCheat2State
		RunConsoleCommand(rook.."TTT", GamemodeCheat2State and 1 or 0)
		local color = GamemodeCheat2State and Color(100, 125, 100) or Color(125, 100, 100)
		GamemodeCheat2.Paint = function(self, w, h)
		draw.RoundedBox(8, 0, 0, w, h, color)
		end
	end
	local RenderDistance = vgui.Create( "DNumSlider", panel7 )
	RenderDistance:SetPos( 10, 50 )
	RenderDistance:SetSize( 190, 25 )
	RenderDistance:SetText( "Render Distance" )
	RenderDistance:SetMin( 500 )
	RenderDistance:SetMax( 50000 )
	RenderDistance:SetDecimals( 0 )
	RenderDistance:SetValue( 5000 )
	RenderDistance:SetConVar( "RenderDistance" )
	local DComboBox = vgui.Create( "DComboBox", panel7 )
	DComboBox:SetPos( 195, 50 )
	DComboBox:SetSize( 100, 20 )
	DComboBox:SetValue( "Color Style" )
	DComboBox:AddChoice( "Custom Colors" )
	DComboBox:AddChoice( "Group Colors" )
	DComboBox:AddChoice( "Rainbow Colors" )
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
	ESPColorAlpha:SetValue( 255 )
	ESPColorAlpha:SetConVar( "ESPColor_A" )
	local Crosshair = vgui.Create( "DCheckBoxLabel", panel7 )
	Crosshair:SetPos( 380,50 )
	Crosshair:SetText( "Crosshair" )
	Crosshair:SetConVar( rook.."CrossHair" )
	Crosshair:SizeToContents()
	local RGBCrosshair = vgui.Create( "DCheckBoxLabel", panel7 )
	RGBCrosshair:SetPos( 395,70 )
	RGBCrosshair:SetText( "RGB Crosshair" )
	RGBCrosshair:SetConVar( rook.."Crosshair_RGB" )
	RGBCrosshair:SizeToContents()
	local SliderRed = vgui.Create( "DNumSlider", panel7 )
	SliderRed:SetPos( 380, 90 )
	SliderRed:SetSize( 190, 25 )
	SliderRed:SetText( "Red" )
	SliderRed:SetMin( 0 )
	SliderRed:SetMax( 255 )
	SliderRed:SetDecimals( 0 )
	SliderRed:SetConVar( "Crosshair_R" )
	local SliderGreen = vgui.Create( "DNumSlider", panel7 )
	SliderGreen:SetPos( 380, 110 )
	SliderGreen:SetSize( 190, 25 )
	SliderGreen:SetText( "Green" )
	SliderGreen:SetMin( 0 )
	SliderGreen:SetMax( 255 )
	SliderGreen:SetDecimals( 0 )
	SliderGreen:SetConVar( "Crosshair_G" )
	local SliderBlue = vgui.Create( "DNumSlider", panel7 )
	SliderBlue:SetPos( 380, 130 )
	SliderBlue:SetSize( 190, 25 )
	SliderBlue:SetText( "Blue" )
	SliderBlue:SetMin( 0 )
	SliderBlue:SetMax( 255 )
	SliderBlue:SetDecimals( 0 )
	SliderBlue:SetConVar( "Crosshair_B" )
	local SliderAlpha = vgui.Create( "DNumSlider", panel7 )
	SliderAlpha:SetPos( 380, 150 )
	SliderAlpha:SetSize( 190, 25 )
	SliderAlpha:SetText( "Opacity" )
	SliderAlpha:SetMin( 50 )
	SliderAlpha:SetMax( 255 )
	SliderAlpha:SetDecimals( 0 )
	SliderAlpha:SetValue( 255 )
	SliderAlpha:SetConVar( "Crosshair_A" )
	local SliderSize = vgui.Create( "DNumSlider", panel7 )
	SliderSize:SetPos( 380, 170 )
	SliderSize:SetSize( 190, 25 )
	SliderSize:SetText( "Size" )
	SliderSize:SetMin( 1 )
	SliderSize:SetMax( 255 )
	SliderSize:SetDecimals( 0 )
	SliderSize:SetValue( 5 )
	SliderSize:SetConVar( "Crosshair_Size" )
	local SliderStyle = vgui.Create( "DNumSlider", panel7 )
	SliderStyle:SetPos( 380, 190 )
	SliderStyle:SetSize( 190, 25 )
	SliderStyle:SetText( "Style" )
	SliderStyle:SetMin( 1 )
	SliderStyle:SetMax( 3 )
	SliderStyle:SetDecimals( 0 )
	SliderStyle:SetValue( 1 )
	SliderStyle:SetConVar( "Crosshair_Style" )
	local configmsg = vgui.Create( "HTML" ) 
	configmsg:SetParent( panel7 )
	configmsg:SetPos( -25, 0 )
	configmsg:SetSize( 600, 35 )
	configmsg:SizeToContents()
	configmsg:OpenURL( "https://i.imgur.com/WzXN6lf.png" )
end)
]]);