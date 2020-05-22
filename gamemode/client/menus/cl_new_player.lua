surface.CreateFont("Intro_Tab1_Title_Font", {
	font = "Trebuchet24",
	size = 56,
})

surface.CreateFont("Intro_Tab1_Font", {
	font = "Arial",
	size = 48,
})

surface.CreateFont("Intro_Tab2_Title_Font", {
	font = "Trebuchet24",
	size = 38,
})

surface.CreateFont("Intro_Tab2_Font", {
	font = "Arial",
	size = 28,
})

surface.CreateFont("Intro_Tab3_Title_Font", {
	font = "Trebuchet24",
	size = 48,
})

surface.CreateFont("Intro_Tab3_Font", {
	font = "Arial",
	size = 28,
})

surface.CreateFont("Intro_Tab4_Title_Font", {
	font = "Arial",
	size = 48,
})

surface.CreateFont("Intro_Tab4_Font", {
	font = "Arial",
	size = 32,
})

local exampleModels = {
	["models/player/Group03/male_06.mdl"] = {},
	["models/player/police.mdl"] = {},
	["models/hlvr/characters/combine/grunt/combine_grunt_hlvr_player.mdl"] = {},
	["models/player/SGG/hev_helmet.mdl"] = {},
}

local examplePets = {
	[0] = "entities/npc_zombie.png",
	[1] = "entities/npc_combine_s.png",
	[2] = "entities/npc_antlion.png",
	[3] = "entities/npc_manhack.png",
}

function LobbyMenu()

	--The Frame

	local frame = vgui.Create("DFrame")
	frame:SetSize(900, 1000)
	frame:Center()
	frame:SetVisible(true)
	frame:SetDraggable(false)
	frame:ShowCloseButton(false)
	frame:SetTitle("")
	frame.Paint = function(s, w, h)
		draw.RoundedBox(0,0,0, w, h, Color(140, 140, 140, 255))
	end
	frame:MakePopup()
	
	--Property Sheet
	local TabSheet = vgui.Create( "DPropertySheet", frame )
	TabSheet:Dock( FILL ) 

	--First Tab Section - Intro
	
	local PanelTabOne = vgui.Create( "DPanel", frame )
	PanelTabOne:SetSize(800, 850)
	PanelTabOne:SetPos(0, 400)
	PanelTabOne.Paint = function(s, w, h)
		draw.RoundedBox(0,0,0, w, h, Color(170, 170, 170, 255))
	end
	
	local LabelTitle = vgui.Create( "DLabel", PanelTabOne )
	LabelTitle:SetPos(200, 250)
	LabelTitle:SetFont("Intro_Tab1_Title_Font")
	LabelTitle:SizeToContents()
	LabelTitle:SetText("Welcome to Half-Life 2:\n Campaign - Revisited")
	LabelTitle:SizeToContents()
	LabelTitle:SetColor(Color(0, 0, 0))
	
	LabelDescText = vgui.Create( "DLabel", PanelTabOne )
	LabelDescText:SetPos(75, 450)
	LabelDescText:SetFont("Intro_Tab1_Font")
	LabelDescText:SetText("Please read the rules before beginning!")
	LabelDescText:SizeToContents()
	LabelDescText:SetColor(Color(0, 0, 0))
	
	TabSheet:AddSheet("Intro", PanelTabOne, nil)
	
	--Second Tab Section - What is this?
	
	local PanelTabTwo = vgui.Create( "DPanel", frame )
	PanelTabTwo:SetSize(800, 850)
	PanelTabTwo:SetPos(0, 400)
	PanelTabTwo.Paint = function(s, w, h)
		draw.RoundedBox(0,0,0, w, h, Color(170, 170, 170, 255))
	end
	
	local LabelTabTwoTitle = vgui.Create( "DLabel", PanelTabTwo )
	LabelTabTwoTitle:SetPos(15, 75)
	LabelTabTwoTitle:SetFont("Intro_Tab2_Title_Font")
	LabelTabTwoTitle:SetText("Half-Life 2: Campaign - Revisited is a cooperative gamemode\nbased from Leiftigers gamemode but with modern updates")
	LabelTabTwoTitle:SizeToContents()
	LabelTabTwoTitle:SetColor(Color(0, 0, 0))
	
	LabelTabTwoDesc1 = vgui.Create( "DLabel", PanelTabTwo)
	LabelTabTwoDesc1:SetPos(100, 250)
	LabelTabTwoDesc1:SetFont("Intro_Tab2_Font")
	LabelTabTwoDesc1:SetText("Unlike other versions such as Iceman's Half-Life 2 Campaign\nthis is coded from scratch with a lot more to offer")
	LabelTabTwoDesc1:SizeToContents()
	LabelTabTwoDesc1:SetColor(Color(0, 0, 0))
	
	LabelTabTwoDesc2 = vgui.Create( "DLabel", PanelTabTwo)
	LabelTabTwoDesc2:SetPos(150, 350)
	LabelTabTwoDesc2:SetFont("Intro_Tab2_Font")
	LabelTabTwoDesc2:SetText("With this version, you can earn not only XP but also")
	LabelTabTwoDesc2:SizeToContents()
	LabelTabTwoDesc2:SetColor(Color(0, 0, 0))
	
	LabelTabTwoDesc3 = vgui.Create( "DLabel", PanelTabTwo)
	LabelTabTwoDesc3:SetPos(250, 400)
	LabelTabTwoDesc3:SetFont("Intro_Tab2_Font")
	LabelTabTwoDesc3:SetText("Lambda Coins\nArmour Sets\nPets\nUpgrades")
	LabelTabTwoDesc3:SizeToContents()
	LabelTabTwoDesc3:SetColor(Color(0, 0, 0))
	
	LabelTabTwoDesc4 = vgui.Create( "DLabel", PanelTabTwo)
	LabelTabTwoDesc4:SetPos(450, 400)
	LabelTabTwoDesc4:SetFont("Intro_Tab2_Font")
	LabelTabTwoDesc4:SetText("Suits\nCrafting Materials\nAchievements\nBuffs")
	LabelTabTwoDesc4:SizeToContents()
	LabelTabTwoDesc4:SetColor(Color(0, 0, 0))
	
	LabelTabTwoDesc5 = vgui.Create( "DLabel", PanelTabTwo)
	LabelTabTwoDesc5:SetPos(250, 550)
	LabelTabTwoDesc5:SetFont("Intro_Tab2_Font")
	LabelTabTwoDesc5:SetText("And a whole lot more to discover!")
	LabelTabTwoDesc5:SizeToContents()
	LabelTabTwoDesc5:SetColor(Color(0, 0, 0))
	
	ModelsTabTwo = vgui.Create("DModelSelect", PanelTabTwo)
	ModelsTabTwo:SetModelList(exampleModels)
	ModelsTabTwo:SetPos(150, 700)
	ModelsTabTwo:SetSize(150, 150)
	
	for i = 0, 3 do
		PetsTabTwo = vgui.Create("DImage", PanelTabTwo)
		PetsTabTwo:SetImage(examplePets[i])
		PetsTabTwo:SetPos(400 + (100 * i), 700)
		PetsTabTwo:SetSize(150, 150)
	end
	
	TabSheet:AddSheet("What is this?", PanelTabTwo, nil)
	
	--Third Tab Section - Rules and Commands
	
	local PanelTabThree = vgui.Create( "DPanel", frame )
	PanelTabThree:SetSize(800, 850)
	PanelTabThree:SetPos(0, 400)
	PanelTabThree.Paint = function(s, w, h)
		draw.RoundedBox(0,0,0, w, h, Color(170, 170, 170, 255))
	end
	
	local LabelTabThreeRuleTitle = vgui.Create( "DLabel", PanelTabThree )
	LabelTabThreeRuleTitle:SetPos(400, 75)
	LabelTabThreeRuleTitle:SetFont("Intro_Tab3_Title_Font")
	LabelTabThreeRuleTitle:SetText("RULES")
	LabelTabThreeRuleTitle:SizeToContents()
	LabelTabThreeRuleTitle:SetColor(Color(0, 0, 0))
	
	local LabelTabThreeRules = vgui.Create( "DLabel", PanelTabThree )
	LabelTabThreeRules:SetPos(50, 250)
	LabelTabThreeRules:SetFont("Intro_Tab3_Font")
	LabelTabThreeRules:SetText("No griefing other players (prop killing, disrupting achievements)\nDo not steal pet kills\nNo Mic/Chat spamming\nKeep it english only in voice chat\nDo not offend other players\nNo exploits/cheating")
	LabelTabThreeRules:SizeToContents()
	LabelTabThreeRules:SetColor(Color(0, 0, 0))
	
	local LabelTabThreeCmdTitle = vgui.Create( "DLabel", PanelTabThree )
	LabelTabThreeCmdTitle:SetPos(350, 550)
	LabelTabThreeCmdTitle:SetFont("Intro_Tab3_Title_Font")
	LabelTabThreeCmdTitle:SetText("COMMANDS")
	LabelTabThreeCmdTitle:SizeToContents()
	LabelTabThreeCmdTitle:SetColor(Color(0, 0, 0))
	
	local LabelTabThreeCmds = vgui.Create( "DLabel", PanelTabThree )
	LabelTabThreeCmds:SetPos(350, 650)
	LabelTabThreeCmds:SetFont("Intro_Tab3_Font")
	LabelTabThreeCmds:SetText("!Difficulty\n!pet\n!petduel\n!lobby\n!petsummon\n!petbring\n!seats\n!ach\n!petname")
	LabelTabThreeCmds:SizeToContents()
	LabelTabThreeCmds:SetColor(Color(0, 0, 0))
	
	TabSheet:AddSheet("Rules and Commands", PanelTabThree, nil)
	
	
	--Fourth Tab Section - Begin playing
	
	local PanelTabFour = vgui.Create( "DPanel", frame )
	PanelTabFour:SetSize(800, 850)
	PanelTabFour:SetPos(0, 400)
	PanelTabFour.Paint = function(s, w, h)
		draw.RoundedBox(0,0,0, w, h, Color(170, 170, 170, 255))
	end
	
	local creditsTitleLabel = vgui.Create("DLabel", PanelTabFour)
	creditsTitleLabel:SetText("CREDITS")
	creditsTitleLabel:SetFont("Intro_Tab4_Title_Font")
	creditsTitleLabel:SetColor(Color(0, 0, 0))
	creditsTitleLabel:SetPos(PanelTabFour:GetWide() / 2 - 50, 75)
	creditsTitleLabel:SizeToContents()
	
	local creditsLabel = vgui.Create("DLabel", PanelTabFour)
	creditsLabel:SetText("SuperSponer - Creator\nD3 - Helper/Developer\n\nSpecial thanks to Sponer's\nfriends for playtesting")
	creditsLabel:SetFont("Intro_Tab4_Font")
	creditsLabel:SetColor(Color(0, 0, 0))
	creditsLabel:SetPos(PanelTabFour:GetWide() / 2 - 100, 175)
	creditsLabel:SizeToContents()
	
	local creditsDiscordUrl = vgui.Create("DLabelURL", PanelTabFour)
	creditsDiscordUrl:SetText("Join the Discord!")
	creditsDiscordUrl:SetColor(Color(0, 0, 0))
	creditsDiscordUrl:SetURL("https://discord.gg/xu5tUCM")
	creditsDiscordUrl:SetSize(100, 75)
	creditsDiscordUrl:SetPos(PanelTabFour:GetWide() / 2 + 5, 775)
	
	
	local startButton = vgui.Create("DButton", PanelTabFour)
	startButton:SetSize(200, 75)
	startButton:SetPos(350, 850)
	startButton:SetText("Begin")
	startButton.DoClick = function() 
		net.Start("Achievement")
			net.WriteString("First_Time")
			net.WriteString("Lobby_Ach_List")
		net.SendToServer()
		frame:Close()
	end
	
	TabSheet:AddSheet("Begin Playing", PanelTabFour, nil)
end

net.Receive("Greetings_new_player", LobbyMenu)