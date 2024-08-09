local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Options = Fluent.Options
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local FaceRemoved = false
local CharColor

local abim1 
local abim2

local StartCharPosition
local Change = false

local CharLights = Instance.new("PointLight", Player.Character:WaitForChild("HumanoidRootPart", 15))
CharLights.Enabled = false
CharLights.Color = Color3.fromRGB(255, 255, 255)

local SaveSpeed
local SaveJumpPower
local Minetr15 = Instance.new("Animation", script)
local Minetr6 = Instance.new("Animation", script)
local Seksr6 = Instance.new("Animation", script)
local Seksr15 = Instance.new("Animation", script)

Minetr15.AnimationId = "rbxassetid://18853685148"
Minetr6.AnimationId = "rbxassetid://18853621949"

Seksr6.AnimationId = "rbxassetid://18853849173"
Seksr15.AnimationId = "rbxassetid://18853770420"

Minetr6.Name = "OOOO_Minet_".. math.random(0,999999999).. "R6_".. math.random(0,9999999)
Minetr6.Name = "OOOO_Minet_".. math.random(0,999999999).. "R15_".. math.random(0,9999999)

Seksr6.Name = "OOOO_Seks_".. math.random(0,999999999).. "R6_".. math.random(0,9999999)
Seksr15.Name = "OOOO_Seks_".. math.random(0,999999999).. "R15_".. math.random(0,9999999)

local Window = Fluent:CreateWindow({
	Title = "WDX Hub (Version: 1.8) ",
	SubTitle = "by MEGA_PUDARAS (Lib UI Version): " .. Fluent.Version,
	TabWidth = 160,
	Size = UDim2.fromOffset(480, 300),
	Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

Player.Character:WaitForChild("Humanoid", 15).Died:Connect(function()

	print("Local Player Died")
	
	FaceRemoved = false
	
	SaveSpeed = Player.Character:WaitForChild("Humanoid", 15).WalkSpeed
	SaveJumpPower = Player.Character:WaitForChild("Humanoid", 15).JumpPower
	

end)

Player.CharacterAdded:Connect(function(NewChar)
	
	print("Player Respawned")
	
	--[[PlayerChar = NewChar
	PlayerHum = NewChar:WaitForChild("Humanoid", 15) --]]
	
	Player.Character:WaitForChild("Humanoid", 15).WalkSpeed = SaveSpeed
	Player.Character:WaitForChild("Humanoid", 15).JumpPower = SaveJumpPower
	
end)

local Tabs = {
	GameTab = Window:AddTab({ Title = "Game", Icon = "" }),
	SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" }),
	SexTab = Window:AddTab({ Title = "3ex", Icon = "settings" }),
	LocalPlayerTab = Window:AddTab({ Title = "LocalPlayer", Icon = "settings" }),
	ExecutorTab = Window:AddTab({ Title = "Executor", Icon = "settings" }),
}

Fluent:Notify({
	Title = "WDX Hub Has Starded!",
	Content = "[Hub Version: 0.1], [Lib UI Version: " .. Fluent.Version .. " ]" ,
	SubContent = "SubContent", -- Optional
	Duration = 5 -- Set to nil to make the notification not disappear
})

Tabs.LocalPlayerTab:AddSlider("Slider", {
	
	Title = "WalkSpeed",
	Description = "Change your Walk Speed",
	Default = Player.Character:WaitForChild("Humanoid", 15).WalkSpeed,
	Min = 0,
	Max = 500,
	Rounding = 1,
	
	Callback = function(Value)
		
		Player.Character:WaitForChild("Humanoid", 15).WalkSpeed = Value
		Value = Player.Character:WaitForChild("Humanoid", 15).WalkSpeed
		print(Value)
		
	end,
	
	
})

Tabs.LocalPlayerTab:AddButton({
	
	Title = "Reset",
	Description = "Reset's your Character",
	
	Callback = function()
		
		Player.Character:WaitForChild("Humanoid", 15).Health = 0
		
	end,
	
})

Tabs.LocalPlayerTab:AddSlider("Slider2", {

	Title = "Jump Power",
	Description = "Change your Jump Power",
	Default = Player.Character:WaitForChild("Humanoid", 15).JumpPower,
	Min = 0,
	Max = 500,
	Rounding = 1,

	Callback = function(Value)

		Player.Character:WaitForChild("Humanoid", 15).JumpPower = Value
		Value = Player.Character:WaitForChild("Humanoid", 15).JumpPower
		print(Value)

	end,


})

Tabs.SexTab:AddParagraph({
	Title = "Minet",
	Content = "Makes Minet For Player"
})

local Toggle1 = Tabs.SexTab:AddToggle("MyToggleww", {Title = "Minet [R6]", Default = false })

Toggle1:OnChanged(function()
	
	if Options.MyToggleww.Value == true then
		
		local Hum = Player.Character:WaitForChild("Humanoid", 15)
		local anim2 = Hum:LoadAnimation(Minetr6)
		
			if Options.MyToggleww.Value == true then
		
			anim2:Play()
		
			else
		
			anim2:Stop()
		
		end
		
	end
	

	
end)

local Toggle2 = Tabs.SexTab:AddToggle("MyToggle2", {Title = "Minet [R15]", Default = false })

Toggle2:OnChanged(function()
	
	if Options.MyToggle2.Value == true then
		
		local Hum = Player.Character:WaitForChild("Humanoid", 15)
		local anim = Hum:LoadAnimation(Minetr15)
		
		if Options.MyToggle2.Value == true then
		
		
			anim:Play()
		
		else
		
			anim:Stop()
		
		end
		
	end
	
end)

Tabs.GameTab:AddButton({

	Title = "Leave",
	Description = "Kick",

	Callback = function()

		Window:Dialog({
			
			Title = "Are you sure you want to quit this game?",
			Content = "If the game does not have any saves, then all data in the game will be lost.",
			Buttons = {
				
			{
				Title = "Confirm",
				Callback = function()
					Player:Kick("You Press leave Button")
				end
			},
			{
				Title = "Cancel",
				Callback = function()
					print("Cancelled the dialog.")
				end
			}
				
		}

			
		})

	end,

})

Tabs.LocalPlayerTab:AddParagraph({
	Title = "Character",
	Content = "Functions That change The Parameters of your Character"
})

local Colorpicker = Tabs.LocalPlayerTab:AddColorpicker("Colorpicker1", {
	Title = "Char Color",
	Default = Color3.fromRGB(123, 255, 116)
})

Colorpicker:OnChanged(function()
	
	
	print("Colorpicker changed:", Colorpicker.Value)
	
	for _, BP in pairs(Player.Character:GetChildren()) do
		
		if BP:IsA("Part") or BP:IsA("MeshPart") or BP:IsA("UnionOperation") then
					
			BP.Color = Color3.fromRGB(Colorpicker.Value)
			
		end
		
	end
	
end)

Tabs.LocalPlayerTab:AddButton({

	Title = "Remove Face",
	Description = "Remove Your Charater Face",

	Callback = function()
		

		local Head = Player.Character:WaitForChild("Head", 15)
		local Face = Head:FindFirstChild("face")
		
		if Face ~= nil then
			
			Face:Destroy()
			
			Fluent:Notify({
				Title = "Face Has Removed",
				Content = "Now you don't have a face" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
			
			FaceRemoved = true
			
		elseif Face == nil then
			
			Fluent:Notify({
				Title = "The face was not found",
				Content = "The face was not found" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
			
		end

	end,

})

local Slider = Tabs.LocalPlayerTab:AddSlider("Slider3", {
	Title = "Character Transparency",
	Description = "Changes the transparency of Your Character",
	Default = 0,
	Min = 0,
	Max = 1,
	Rounding = 1,
	
	Callback = function(Value)
		
		for _, BP in ipairs(Player.Character:GetChildren()) do
			
			if BP:IsA("Part") or BP:IsA("MeshPart") or BP:IsA("UnionOperation") then
				
				BP.Transparency = Value
				Player.Character.HumanoidRootPart.Transparency = 1
				
			end
			
		end
		
	end
})

Tabs.LocalPlayerTab:AddButton({
	
	Title = "Destroy Shirt",
	Description = "Destroy you shirt",
	
	Callback = function()
		
		local char = Player.Character
		local Shirt = char:FindFirstChild("Shirt")
		
		if Shirt ~= nil then
			
			Shirt:Destroy()
			
			Fluent:Notify({
				Title = "Shirt Destroyed",
				Content = "Shirt Destroyed" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
			
		elseif Shirt == nil then
			
			Fluent:Notify({
				Title = "The Shirt was not found",
				Content = "The Shirt was not found" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
			
		end
		
	end,
	
})

Tabs.LocalPlayerTab:AddButton({

	Title = "Destroy Pants",
	Description = "Destroy you Pants",

	Callback = function()

		local char = Player.Character
		local Pants = char:FindFirstChild("Pants")

		if Pants ~= nil then

			Pants:Destroy()

			Fluent:Notify({
				Title = "Pants Destroyed",
				Content = "Pants Destroyed" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})

		elseif Pants == nil then

			Fluent:Notify({
				Title = "The Pants was not found",
				Content = "The Pants was not found" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})

		end

	end,

})

Tabs.LocalPlayerTab:AddButton({

	Title = "Destroy Shirt",
	Description = "Destroy you shirt",

	Callback = function()

		local char = Player.Character
		local Shirt = char:FindFirstChild("ShirtGraphic")

		if Shirt ~= nil then

			Shirt:Destroy()

			Fluent:Notify({
				Title = "T-Shirt Destroyed",
				Content = "T-Shirt Destroyed" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})

		elseif Shirt == nil then

			Fluent:Notify({
				Title = "The T-Shirt was not found",
				Content = "The T-Shirt was not found" ,
				--SubContent = "SubContent", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})

		end

	end,

})

local Toggle55 = Tabs.LocalPlayerTab:AddToggle("MyToggle45", {Title = "Char Platform Stand", Default = false })

Toggle55:OnChanged(function()
	
	local char = Player.Character
	local Hum = char:WaitForChild("Humanoid", 15)
	
	if Options.MyToggle45.Value == true then
		
		Hum.PlatformStand = true
		
	elseif Options.MyToggle45.Value == false then
		
		Hum.PlatformStand = false
		
	end
	
end)

local Toggle56 = Tabs.LocalPlayerTab:AddToggle("MyToggle45de", {Title = "Go to nil", Default = false })

Toggle56:OnChanged(function()

	local char = Player.Character
	
	if Options.MyToggle45de.Value == true then
		
		StartCharPosition = char:WaitForChild("HumanoidRootPart", 15).Position
		char:WaitForChild("HumanoidRootPart", 15).Position = Vector3.new(7380.598, 7348.319, -20636.758)
		char:WaitForChild("HumanoidRootPart", 15).Anchored = true
		
	elseif Options.MyToggle45de.Value == false then
		
		char:WaitForChild("HumanoidRootPart", 15).Position = Vector3.new(StartCharPosition)
		char:WaitForChild("HumanoidRootPart", 15).Anchored = false
		
	end
	
end)

local Toggle56 = Tabs.LocalPlayerTab:AddToggle("MyToggle45des", {Title = "CharLight", Default = false })

Toggle56:OnChanged(function()

	local char = Player.Character

	if Options.MyToggle45des.Value == true then

		CharLights.Enabled = true

	elseif Options.MyToggle45des.Value == false then

		CharLights.Enabled = false

	end

end)

--[[Tabs.LocalPlayerTab:AddParagraph({
	Title = "Inf Jump",
	Content = ""
})--]]



Fluent:Notify({
	Title = "WDX Hub",
	Content = "The WDX Hub has been loaded.",
	Duration = 8
})



warn("WDX Hub Has been Loaded")
