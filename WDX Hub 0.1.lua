local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Options = Fluent.Options
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local CharColor

local abim1 
local abim2

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

local Window = Fluent:CreateWindow({
	Title = "WDX Hub (Version: 0.1) ",
	SubTitle = "by MEGA_PUDARAS (Lib UI Version): " .. Fluent.Version,
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

Player.Character:WaitForChild("Humanoid", 15).Died:Connect(function()

	print("Local Player Died")
	
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
	SexTab = Window:AddTab({ "3ex", Icon = "settings" }),
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

local Toggle1 = Tabs.SexTab:AddToggle("MyToggle", {Title = "Minet [R6]", Default = false })

Toggle1:OnChanged(function()
	
	if Options.MyToggle.Value == true then
		
		local Hum = Player.Character:WaitForChild("Humanoid", 15)
		local anim2 = Hum:LoadAnimation(Minetr6)
		
			if Options.MyToggle.Value == true then
		
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

		Player:Kick("You Press Leave Button")

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
	
	local Color = Colorpicker.Value
	print("Colorpicker changed:", Color)
	
	for _, BP in pairs(Player.Character:GetChildren()) do
		
		if BP:IsA("Part") or BP:IsA("MeshPart") or BP:IsA("UnionOperation") then
					
		BP.Color = Color3.fromRGB(Color)
			
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
			
		else
			
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
	Rounding = 0.1,
	
	Callback = function(Value)
		
		for _, BP in pairs(Player.Character:GetChildren()) do
			
			if BP:IsA("Part") or BP:IsA("MeshPart") or BP:IsA("UnionOperation") then
				
				BP.Transparency = Value
				BP.HumanoidRootPart.Transparency = 1
				
			end
			
		end
		
	end
})
