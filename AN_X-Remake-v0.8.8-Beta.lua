config = {
	AN_X_Started = false,
	AN_X_Remake_Version = 'v0.8.8-Beta',
	SaveZoneBuilded = false,
	SaveZoneCFrame = nil,
	InSaveZone = false,
	DobleLifeEnabled = false,
	EnabledSpawnLocation = false,
	InfinintyJumpEnabled = false,
	ExecutorAPI_Enabled = true,
	VelocityWalk_Enabled = false,
}

function GetExecutorAPI()
	local function APIHandler()
		config.ExecutorAPI_Enabled = false
	end
	local function Test()
		setclipboard("Delete this from your clipboard")
	end
	xpcall(Test, APIHandler)
end

GetExecutorAPI()

function notify_client(notify_title, notify_content, notify_lifetime)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = notify_title, -- Required
		Text = notify_content, -- Required
		--Icon = "rbxassetid://1234567890" -- Optional
		Duration = notify_lifetime
	})
	--[[	title_n.Text = notify_title
		TextLabel_n.Text = notify_content

		local tweenInfo = TweenInfo.new(1)
		local guiInstance = notify

		local xScaleSize = 0.51 -- modify this until the notification opens up to your taste. From 0 to 1.
		local yScalePosition = 0.67 -- modify this to your taste. From 0 to 1.

		local openGoal = {Position = UDim2.fromScale(xScaleSize, yScalePosition)} -- fromScale since we're only using scales.
		local closedGoal = {Position = UDim2.fromScale(1, yScalePosition)}

		local openTween = tweens:Create(guiInstance, tweenInfo, openGoal)
		local closeTween = tweens:Create(guiInstance, tweenInfo, closedGoal)
		notify.Visible = true
		openTween:Play()
		task.spawn(function()
			task.wait(notify_lifetime) -- better than using wait()
			closeTween:Play()
			closeTween.Completed:Connect(function()
				notify.Visible = false -- technically, no longer needed, but you may keep it if you wish.
			end)
		end)	--]]	
end

function BuildSusPencil()
	local asa = Instance.new("Model") 
	local Part = Instance.new("Part") 
	local Part1 = Instance.new("Part") 
	local Skin = Instance.new("Part") 
	local Skin2 = Instance.new("Part") 
	local Skin3 = Instance.new("Part") 
	local WeldConstraint = Instance.new("WeldConstraint") 
	local WeldConstraint4 = Instance.new("WeldConstraint") 
	local WeldConstraint5 = Instance.new("WeldConstraint") 
	local WeldConstraint6 = Instance.new("WeldConstraint") 
	local WeldConstraint7 = Instance.new("WeldConstraint") 
	asa.Archivable = true 
	asa.Name = "asa" 
	asa.Parent = game.Players.LocalPlayer.Character
	asa.PrimaryPart = Part 
	Part.Anchored = false 
	Part.Archivable = true 
	Part.BackParamA = -0.5 
	Part.BackParamB = 0.5 
	Part.BackSurface = Enum.SurfaceType.Smooth 
	Part.BackSurfaceInput = Enum.InputType.NoInput 
	Part.BottomParamA = -0.5 
	Part.BottomParamB = 0.5 
	Part.BottomSurface = Enum.SurfaceType.Smooth 
	Part.BottomSurfaceInput = Enum.InputType.NoInput 
	Part.BrickColor = BrickColor.new("Persimmon") 
	Part.CFrame = CFrame.new(-0.0076465606689453125, -0.5211788415908813, -3.6384851932525635)*CFrame.Angles(-1, -0, -0) 
	Part.CanCollide = true 
	Part.CollisionGroupId = "0" 
	Part.Color = Color3.new(1, 0.34902, 0.34902) 
	Part.FrontParamA = -0.5 
	Part.FrontParamB = 0.5 
	Part.FrontSurface = Enum.SurfaceType.Smooth 
	Part.FrontSurfaceInput = Enum.InputType.NoInput 
	Part.LeftParamA = -0.5 
	Part.LeftParamB = 0.5 
	Part.LeftSurface = Enum.SurfaceType.Smooth 
	Part.LeftSurfaceInput = Enum.InputType.NoInput 
	Part.Locked = false 
	Part.Material = Enum.Material.SmoothPlastic 
	Part.Name = "Part" 
	Part.Orientation = Vector3.new(0, 90, 10) 
	Part.Parent = asa 
	Part.Position = Vector3.new(-0.0076465606689453125, -0.5211788415908813, -3.6384851932525635) 
	Part.Reflectance = 0 
	Part.RightParamA = -0.5 
	Part.RightParamB = 0.5 
	Part.RightSurface = Enum.SurfaceType.Smooth 
	Part.RightSurfaceInput = Enum.InputType.NoInput 
	Part.RotVelocity = Vector3.new(0, 0, 0) 
	Part.Rotation = Vector3.new(10, 90, 0) 
	Part.Shape = Enum.PartType.Block 
	Part.Size = Vector3.new(0.5676097869873047, 0.6063795685768127, 0.6482160687446594) 
	Part.TopParamA = -0.5 
	Part.TopParamB = 0.5 
	Part.TopSurface = Enum.SurfaceType.Smooth 
	Part.TopSurfaceInput = Enum.InputType.NoInput 
	Part.Transparency = 0 
	Part.Velocity = Vector3.new(0, 0, 0) 
	Part1.Anchored = false 
	Part1.Archivable = true 
	Part1.BackParamA = -0.5 
	Part1.BackParamB = 0.5 
	Part1.BackSurface = Enum.SurfaceType.Smooth 
	Part1.BackSurfaceInput = Enum.InputType.NoInput 
	Part1.BottomParamA = -0.5 
	Part1.BottomParamB = 0.5 
	Part1.BottomSurface = Enum.SurfaceType.Smooth 
	Part1.BottomSurfaceInput = Enum.InputType.NoInput 
	Part1.BrickColor = BrickColor.new("Really black") 
	Part1.CFrame = CFrame.new(-0.020215988159179688, -0.4379911720752716, -3.903707981109619)*CFrame.Angles(-1, -0, -0) 
	Part1.CanCollide = true 
	Part1.CollisionGroupId = "0" 
	Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667) 
	Part1.FrontParamA = -0.5 
	Part1.FrontParamB = 0.5 
	Part1.FrontSurface = Enum.SurfaceType.Smooth 
	Part1.FrontSurfaceInput = Enum.InputType.NoInput 
	Part1.LeftParamA = -0.5 
	Part1.LeftParamB = 0.5 
	Part1.LeftSurface = Enum.SurfaceType.Smooth 
	Part1.LeftSurfaceInput = Enum.InputType.NoInput 
	Part1.Locked = false 
	Part1.Material = Enum.Material.SmoothPlastic 
	Part1.Name = "Part1" 
	Part1.Orientation = Vector3.new(0, 90, 10) 
	Part1.Parent = asa 
	Part1.Position = Vector3.new(-0.020215988159179688, -0.4379911720752716, -3.903707981109619) 
	Part1.Reflectance = 0 
	Part1.RightParamA = -0.5 
	Part1.RightParamB = 0.5 
	Part1.RightSurface = Enum.SurfaceType.Smooth 
	Part1.RightSurfaceInput = Enum.InputType.NoInput 
	Part1.RotVelocity = Vector3.new(0, 0, 0) 
	Part1.Rotation = Vector3.new(10, 90, 0) 
	Part1.Shape = Enum.PartType.Block 
	Part1.Size = Vector3.new(0.01645447127521038, 0.30573931336402893, 0.01921810209751129) 
	Part1.TopParamA = -0.5 
	Part1.TopParamB = 0.5 
	Part1.TopSurface = Enum.SurfaceType.Smooth 
	Part1.TopSurfaceInput = Enum.InputType.NoInput 
	Part1.Transparency = 0 
	Part1.Velocity = Vector3.new(0, 0, 0) 
	Skin.Anchored = false 
	Skin.Archivable = true 
	Skin.BackParamA = -0.5 
	Skin.BackParamB = 0.5 
	Skin.BackSurface = Enum.SurfaceType.Smooth 
	Skin.BackSurfaceInput = Enum.InputType.NoInput 
	Skin.BottomParamA = -0.5 
	Skin.BottomParamB = 0.5 
	Skin.BottomSurface = Enum.SurfaceType.Smooth 
	Skin.BottomSurfaceInput = Enum.InputType.NoInput 
	Skin.BrickColor = BrickColor.new("Cool yellow") 
	Skin.CFrame = CFrame.new(-0.0076465606689453125, -0.861923336982727, -1.7061620950698853)*CFrame.Angles(-1, -0, -0) 
	Skin.CanCollide = true 
	Skin.CollisionGroupId = "0" 
	Skin.Color = Color3.new(0.992157, 0.917647, 0.552941) 
	Skin.FrontParamA = -0.5 
	Skin.FrontParamB = 0.5 
	Skin.FrontSurface = Enum.SurfaceType.Smooth 
	Skin.FrontSurfaceInput = Enum.InputType.NoInput 
	Skin.LeftParamA = -0.5 
	Skin.LeftParamB = 0.5 
	Skin.LeftSurface = Enum.SurfaceType.Smooth 
	Skin.LeftSurfaceInput = Enum.InputType.NoInput 
	Skin.Locked = false 
	Skin.Material = Enum.Material.SmoothPlastic 
	Skin.Name = "Skin" 
	Skin.Orientation = Vector3.new(0, 90, 10) 
	Skin.Parent = asa 
	Skin.Position = Vector3.new(-0.0076465606689453125, -0.861923336982727, -1.7061620950698853) 
	Skin.Reflectance = 0 
	Skin.RightParamA = -0.5 
	Skin.RightParamB = 0.5 
	Skin.RightSurface = Enum.SurfaceType.Smooth 
	Skin.RightSurfaceInput = Enum.InputType.NoInput 
	Skin.RotVelocity = Vector3.new(0, 0, 0) 
	Skin.Rotation = Vector3.new(10, 90, 0) 
	Skin.Shape = Enum.PartType.Block 
	Skin.Size = Vector3.new(3.3579752445220947, 0.6063795685768127, 0.6482160687446594) 
	Skin.TopParamA = -0.5 
	Skin.TopParamB = 0.5 
	Skin.TopSurface = Enum.SurfaceType.Smooth 
	Skin.TopSurfaceInput = Enum.InputType.NoInput 
	Skin.Transparency = 0 
	Skin.Velocity = Vector3.new(0, 0, 0) 
	Skin2.Anchored = false 
	Skin2.Archivable = true 
	Skin2.BackParamA = -0.5 
	Skin2.BackParamB = 0.5 
	Skin2.BackSurface = Enum.SurfaceType.Smooth 
	Skin2.BackSurfaceInput = Enum.InputType.NoInput 
	Skin2.BottomParamA = -0.5 
	Skin2.BottomParamB = 0.5 
	Skin2.BottomSurface = Enum.SurfaceType.Smooth 
	Skin2.BottomSurfaceInput = Enum.InputType.NoInput 
	Skin2.BrickColor = BrickColor.new("Cool yellow") 
	Skin2.CFrame = CFrame.new(0.2392573356628418, -1.299079418182373, -0.789354681968689)*CFrame.Angles(-0.49999991059303284, 0.8660255074501038, -1.4901159417490817e-08) 
	Skin2.CanCollide = true 
	Skin2.CollisionGroupId = "0" 
	Skin2.Color = Color3.new(0.992157, 0.917647, 0.552941) 
	Skin2.FrontParamA = -0.5 
	Skin2.FrontParamB = 0.5 
	Skin2.FrontSurface = Enum.SurfaceType.Smooth 
	Skin2.FrontSurfaceInput = Enum.InputType.NoInput 
	Skin2.LeftParamA = -0.5 
	Skin2.LeftParamB = 0.5 
	Skin2.LeftSurface = Enum.SurfaceType.Smooth 
	Skin2.LeftSurfaceInput = Enum.InputType.NoInput 
	Skin2.Locked = false 
	Skin2.Material = Enum.Material.SmoothPlastic 
	Skin2.Name = "Skin2" 
	Skin2.Orientation = Vector3.new(60, 90, 10) 
	Skin2.Parent = asa 
	Skin2.Position = Vector3.new(0.2392573356628418, -1.299079418182373, -0.789354681968689) 
	Skin2.Reflectance = 0 
	Skin2.RightParamA = -0.5 
	Skin2.RightParamB = 0.5 
	Skin2.RightSurface = Enum.SurfaceType.Smooth 
	Skin2.RightSurfaceInput = Enum.InputType.NoInput 
	Skin2.RotVelocity = Vector3.new(0, 0, 0) 
	Skin2.Rotation = Vector3.new(90, 30, -80) 
	Skin2.Shape = Enum.PartType.Block 
	Skin2.Size = Vector3.new(0.5042506456375122, 0.6063795685768127, 0.9570325613021851) 
	Skin2.TopParamA = -0.5 
	Skin2.TopParamB = 0.5 
	Skin2.TopSurface = Enum.SurfaceType.Smooth 
	Skin2.TopSurfaceInput = Enum.InputType.NoInput 
	Skin2.Transparency = 0 
	Skin2.Velocity = Vector3.new(0, 0, 0) 
	Skin3.Anchored = false 
	Skin3.Archivable = true 
	Skin3.BackParamA = -0.5 
	Skin3.BackParamB = 0.5 
	Skin3.BackSurface = Enum.SurfaceType.Smooth 
	Skin3.BackSurfaceInput = Enum.InputType.NoInput 
	Skin3.BottomParamA = -0.5 
	Skin3.BottomParamB = 0.5 
	Skin3.BottomSurface = Enum.SurfaceType.Smooth 
	Skin3.BottomSurfaceInput = Enum.InputType.NoInput 
	Skin3.BrickColor = BrickColor.new("Cool yellow") 
	Skin3.CFrame = CFrame.new(-0.11623620986938477, -1.299079418182373, -0.789354681968689)*CFrame.Angles(0.5, 0.8660253882408142, -1.4901157641133977e-08) 
	Skin3.CanCollide = true 
	Skin3.CollisionGroupId = "0" 
	Skin3.Color = Color3.new(0.992157, 0.917647, 0.552941) 
	Skin3.FrontParamA = -0.5 
	Skin3.FrontParamB = 0.5 
	Skin3.FrontSurface = Enum.SurfaceType.Smooth 
	Skin3.FrontSurfaceInput = Enum.InputType.NoInput 
	Skin3.LeftParamA = -0.5 
	Skin3.LeftParamB = 0.5 
	Skin3.LeftSurface = Enum.SurfaceType.Smooth 
	Skin3.LeftSurfaceInput = Enum.InputType.NoInput 
	Skin3.Locked = false 
	Skin3.Material = Enum.Material.SmoothPlastic 
	Skin3.Name = "Skin3" 
	Skin3.Orientation = Vector3.new(60, -90, -170) 
	Skin3.Parent = asa 
	Skin3.Position = Vector3.new(-0.11623620986938477, -1.299079418182373, -0.789354681968689) 
	Skin3.Reflectance = 0 
	Skin3.RightParamA = -0.5 
	Skin3.RightParamB = 0.5 
	Skin3.RightSurface = Enum.SurfaceType.Smooth 
	Skin3.RightSurfaceInput = Enum.InputType.NoInput 
	Skin3.RotVelocity = Vector3.new(0, 0, 0) 
	Skin3.Rotation = Vector3.new(90, -30, -80) 
	Skin3.Shape = Enum.PartType.Block 
	Skin3.Size = Vector3.new(0.5042506456375122, 0.6063795685768127, 0.9570325613021851) 
	Skin3.TopParamA = -0.5 
	Skin3.TopParamB = 0.5 
	Skin3.TopSurface = Enum.SurfaceType.Smooth 
	Skin3.TopSurfaceInput = Enum.InputType.NoInput 
	Skin3.Transparency = 0 
	Skin3.Velocity = Vector3.new(0, 0, 0) 
	WeldConstraint.Archivable = true 
	WeldConstraint.Enabled = true 
	WeldConstraint.Name = "WeldConstraint" 
	WeldConstraint.Parent = asa 
	WeldConstraint.Part0 = Skin 
	WeldConstraint.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	WeldConstraint4.Archivable = true 
	WeldConstraint4.Enabled = true 
	WeldConstraint4.Name = "WeldConstraint4" 
	WeldConstraint4.Parent = Part 
	WeldConstraint4.Part0 = Part 
	WeldConstraint4.Part1 = Skin 
	WeldConstraint5.Archivable = true 
	WeldConstraint5.Enabled = true 
	WeldConstraint5.Name = "WeldConstraint5" 
	WeldConstraint5.Parent = Part1 
	WeldConstraint5.Part0 = Part1 
	WeldConstraint5.Part1 = Part 
	WeldConstraint6.Archivable = true 
	WeldConstraint6.Enabled = true 
	WeldConstraint6.Name = "WeldConstraint6" 
	WeldConstraint6.Parent = Skin 
	WeldConstraint6.Part0 = Skin 
	WeldConstraint6.Part1 = Skin2 
	WeldConstraint7.Archivable = true 
	WeldConstraint7.Enabled = true 
	WeldConstraint7.Name = "WeldConstraint7" 
	WeldConstraint7.Parent = Skin 
	WeldConstraint7.Part0 = Skin 
	WeldConstraint7.Part1 = Skin3
end

function BuildCostomBody()
	local CustomBody1 = Instance.new("Model") 
	local LagPart = Instance.new("Part") 
	local CustomBody = Instance.new("Part") 
	local CustomHead = Instance.new("Part") 
	local WeldConstraint2 = Instance.new("WeldConstraint") 
	local WeldConstraint3 = Instance.new("WeldConstraint") 
	local WeldConstraint = Instance.new("WeldConstraint") 
	local Decal = Instance.new("Decal") 
	CustomBody1.Archivable = true 
	CustomBody1.Name = "CustomBody1" 
	CustomBody1.Parent = game.Players.LocalPlayer.Character
	CustomBody1.PrimaryPart = nil 
	LagPart.Anchored = false 
	LagPart.Archivable = true 
	LagPart.BackParamA = -0.5 
	LagPart.BackParamB = 0.5 
	LagPart.BackSurface = Enum.SurfaceType.Smooth 
	LagPart.BackSurfaceInput = Enum.InputType.NoInput 
	LagPart.BottomParamA = -0.5 
	LagPart.BottomParamB = 0.5 
	LagPart.BottomSurface = Enum.SurfaceType.Smooth 
	LagPart.BottomSurfaceInput = Enum.InputType.NoInput 
	LagPart.BrickColor = BrickColor.new("Medium stone grey") 
	LagPart.CFrame = CFrame.new(-0.0316624641418457, -0.2982483506202698, -2.175319194793701)*CFrame.Angles(-0, -0, -1) 
	LagPart.CanCollide = true 
	LagPart.CollisionGroupId = "0" 
	LagPart.Color = Color3.new(0.639216, 0.635294, 0.647059) 
	LagPart.FrontParamA = -0.5 
	LagPart.FrontParamB = 0.5 
	LagPart.FrontSurface = Enum.SurfaceType.Smooth 
	LagPart.FrontSurfaceInput = Enum.InputType.NoInput 
	LagPart.LeftParamA = -0.5 
	LagPart.LeftParamB = 0.5 
	LagPart.LeftSurface = Enum.SurfaceType.Smooth 
	LagPart.LeftSurfaceInput = Enum.InputType.NoInput 
	LagPart.Locked = false 
	LagPart.Material = Enum.Material.Plastic 
	LagPart.Name = "LagPart" 
	LagPart.Orientation = Vector3.new(0, 0, 0) 
	LagPart.Parent = CustomBody1 
	LagPart.Position = Vector3.new(-0.0316624641418457, -0.2982483506202698, -2.175319194793701) 
	LagPart.Reflectance = 0 
	LagPart.RightParamA = -0.5 
	LagPart.RightParamB = 0.5 
	LagPart.RightSurface = Enum.SurfaceType.Smooth 
	LagPart.RightSurfaceInput = Enum.InputType.NoInput 
	LagPart.RotVelocity = Vector3.new(0, 0, 0) 
	LagPart.Rotation = Vector3.new(0, 0, 0) 
	LagPart.Shape = Enum.PartType.Block 
	LagPart.Size = Vector3.new(1.9366748332977295, 1, 5.700000286102295) 
	LagPart.TopParamA = -0.5 
	LagPart.TopParamB = 0.5 
	LagPart.TopSurface = Enum.SurfaceType.Smooth 
	LagPart.TopSurfaceInput = Enum.InputType.NoInput 
	LagPart.Transparency = 1 
	LagPart.Velocity = Vector3.new(0, 0, 0) 
	CustomBody.Anchored = false 
	CustomBody.Archivable = true 
	CustomBody.BackParamA = -0.5 
	CustomBody.BackParamB = 0.5 
	CustomBody.BackSurface = Enum.SurfaceType.Smooth 
	CustomBody.BackSurfaceInput = Enum.InputType.NoInput 
	CustomBody.BottomParamA = -0.5 
	CustomBody.BottomParamB = 0.5 
	CustomBody.BottomSurface = Enum.SurfaceType.Smooth 
	CustomBody.BottomSurfaceInput = Enum.InputType.NoInput 
	CustomBody.BrickColor = BrickColor.new("Medium stone grey") 
	CustomBody.CFrame = CFrame.new(-0.010620713233947754, -0.8867800831794739, -0.19822347164154053)*CFrame.Angles(-0, -0, -1) 
	CustomBody.CanCollide = true 
	CustomBody.CollisionGroupId = "0" 
	CustomBody.Color = Color3.new(0.639216, 0.635294, 0.647059) 
	CustomBody.FrontParamA = -0.5 
	CustomBody.FrontParamB = 0.5 
	CustomBody.FrontSurface = Enum.SurfaceType.Smooth 
	CustomBody.FrontSurfaceInput = Enum.InputType.NoInput 
	CustomBody.LeftParamA = -0.5 
	CustomBody.LeftParamB = 0.5 
	CustomBody.LeftSurface = Enum.SurfaceType.Smooth 
	CustomBody.LeftSurfaceInput = Enum.InputType.NoInput 
	CustomBody.Locked = false 
	CustomBody.Material = Enum.Material.Plastic 
	CustomBody.Name = "CustomBody" 
	CustomBody.Orientation = Vector3.new(0, 0, 0) 
	CustomBody.Parent = CustomBody1 
	CustomBody.Position = Vector3.new(-0.011, -0.729, -0.198) 
	CustomBody.Reflectance = 0 
	CustomBody.RightParamA = -0.5 
	CustomBody.RightParamB = 0.5 
	CustomBody.RightSurface = Enum.SurfaceType.Smooth 
	CustomBody.RightSurfaceInput = Enum.InputType.NoInput 
	CustomBody.RotVelocity = Vector3.new(0, 0, 0) 
	CustomBody.Rotation = Vector3.new(0, 0, 0) 
	CustomBody.Shape = Enum.PartType.Block 
	CustomBody.Size = Vector3.new(4.833, 3.811, 2.387) 
	CustomBody.TopParamA = -0.5 
	CustomBody.TopParamB = 0.5 
	CustomBody.TopSurface = Enum.SurfaceType.Smooth 
	CustomBody.TopSurfaceInput = Enum.InputType.NoInput 
	CustomBody.Transparency = 0 
	CustomBody.Velocity = Vector3.new(0, 0, 0) 
	CustomHead.Anchored = false 
	CustomHead.Archivable = true 
	CustomHead.BackParamA = -0.5 
	CustomHead.BackParamB = 0.5 
	CustomHead.BackSurface = Enum.SurfaceType.Smooth 
	CustomHead.BackSurfaceInput = Enum.InputType.NoInput 
	CustomHead.BottomParamA = -0.5 
	CustomHead.BottomParamB = 0.5 
	CustomHead.BottomSurface = Enum.SurfaceType.Smooth 
	CustomHead.BottomSurfaceInput = Enum.InputType.NoInput 
	CustomHead.BrickColor = BrickColor.new("Medium stone grey") 
	CustomHead.CFrame = CFrame.new(-0.010620713233947754, 1.9265217781066895, -0.19822347164154053)*CFrame.Angles(-0, -0, -1) 
	CustomHead.CanCollide = true 
	CustomHead.CollisionGroupId = "0" 
	CustomHead.Color = Color3.new(0.639216, 0.635294, 0.647059) 
	CustomHead.FrontParamA = -0.5 
	CustomHead.FrontParamB = 0.5 
	CustomHead.FrontSurface = Enum.SurfaceType.Smooth 
	CustomHead.FrontSurfaceInput = Enum.InputType.NoInput 
	CustomHead.LeftParamA = -0.5 
	CustomHead.LeftParamB = 0.5 
	CustomHead.LeftSurface = Enum.SurfaceType.Smooth 
	CustomHead.LeftSurfaceInput = Enum.InputType.NoInput 
	CustomHead.Locked = false 
	CustomHead.Material = Enum.Material.Plastic 
	CustomHead.Name = "CustomHead" 
	CustomHead.Orientation = Vector3.new(0, 0, 0) 
	CustomHead.Parent = CustomBody1 
	CustomHead.Position = Vector3.new(-0.010620713233947754, 1.9265217781066895, -0.19822347164154053) 
	CustomHead.Reflectance = 0 
	CustomHead.RightParamA = -0.5 
	CustomHead.RightParamB = 0.5 
	CustomHead.RightSurface = Enum.SurfaceType.Smooth 
	CustomHead.RightSurfaceInput = Enum.InputType.NoInput 
	CustomHead.RotVelocity = Vector3.new(0, 0, 0) 
	CustomHead.Rotation = Vector3.new(0, 0, 0) 
	CustomHead.Shape = Enum.PartType.Block 
	CustomHead.Size = Vector3.new(4.832732200622559, 1.5010002851486206, 2.3868863582611084) 
	CustomHead.TopParamA = -0.5 
	CustomHead.TopParamB = 0.5 
	CustomHead.TopSurface = Enum.SurfaceType.Smooth 
	CustomHead.TopSurfaceInput = Enum.InputType.NoInput 
	CustomHead.Transparency = 0 
	CustomHead.Velocity = Vector3.new(0, 0, 0) 
	WeldConstraint2.Archivable = true 
	WeldConstraint2.Enabled = true 
	WeldConstraint2.Name = "WeldConstraint2" 
	WeldConstraint2.Parent = CustomBody 
	WeldConstraint2.Part0 = CustomBody 
	WeldConstraint2.Part1 = CustomHead 
	WeldConstraint3.Archivable = true 
	WeldConstraint3.Enabled = true 
	WeldConstraint3.Name = "WeldConstraint3" 
	WeldConstraint3.Parent = CustomBody 
	WeldConstraint3.Part0 = CustomBody 
	WeldConstraint3.Part1 = LagPart 
	WeldConstraint.Archivable = true 
	WeldConstraint.Enabled = true 
	WeldConstraint.Name = "WeldConstraint" 
	WeldConstraint.Parent = CustomBody 
	WeldConstraint.Part0 = CustomBody 
	WeldConstraint.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart 
	Decal.Archivable = true 
	Decal.Color3 = Color3.new(1, 1, 1) 
	Decal.Face = Enum.NormalId.Front 
	Decal.Name = "Decal" 
	Decal.Parent = CustomHead 
	Decal.Texture = "http://www.roblox.com/asset/?id=9180622665" 
	Decal.Transparency = 0
end

function resetConfig()
	config.AN_X_Started = true
	config.AN_X_Remake_Version = 'v0.8.8-Beta'
	config.SaveZoneBuilded = false
	config.SaveZoneCFrame = nil
	config.InSaveZone = false
	config.DobleLifeEnabled = false
	config.EnabledSpawnLocation = false
	config.InfinintyJumpEnabled = false
	GetExecutorAPI()
end

local function BuildMain()
	-- Gui to Lua
	-- Version: 3.2

	--Variables:

	local Admins = {
		game.Players.LocalPlayer.Name
	}
	local Prefix = "!"
	local Players= game:GetService("Players")
	local Commands = {}

	--Scripts Variables:

	local A=Instance.new'Animation'
	local P=game:GetService'Players'.LocalPlayer
	local C=P.Character or P.CharacterAdded:Wait()
	A.AnimationId='rbxassetid://148840371'
	local H=C:WaitForChild'Humanoid':LoadAnimation(A)
	local bangEnabled = false

	-- Instances:

	local AN_XGUIREMAKE = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Input = Instance.new("TextBox")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local UIStroke = Instance.new('UIStroke')
	local animations = Instance.new('Folder')
	local notify = Instance.new("Frame")
	local UiGradient_n = Instance.new("UIGradient")
	local Frame_n = Instance.new("Frame")
	local title_n = Instance.new("TextLabel")
	local TextLabel_n = Instance.new("TextLabel")
	local NotifyFolder = Instance.new('Folder')
	local HideButton = Instance.new("TextButton")
	local UICorner2 = Instance.new("UICorner")

	--Services:

	local tweens = game:GetService('TweenService')
	local UserInput = game:GetService('UserInputService')
	local ContentProvider = game:GetService('ContentProvider')
	ContentProvider:PreloadAsync({script})

	--Properties:

	AN_XGUIREMAKE.Name = "AN_X-GUI [REMAKE]"
	if config.ExecutorAPI_Enabled == true then
		AN_XGUIREMAKE.Parent = game.CoreGui
	else
		AN_XGUIREMAKE.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	end
	AN_XGUIREMAKE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AN_XGUIREMAKE.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

	Frame.Parent = AN_XGUIREMAKE
	Frame.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.0206896551, 0, 0.840085268, 0)
	Frame.Size = UDim2.new(0, 817, 0, 52)

	Input.Name = "Input"
	Input.Parent = Frame
	Input.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
	Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Input.BorderSizePixel = 0
	Input.Position = UDim2.new(0, 0, 0.634615362, 0)
	Input.Size = UDim2.new(0, 817, 0, 19)
	Input.Font = Enum.Font.SourceSansBold
	Input.Text = ""
	Input.TextColor3 = Color3.fromRGB(255, 255, 255)
	Input.TextScaled = true
	Input.TextSize = 14.000
	Input.TextWrapped = true
	Input.TextXAlignment = Enum.TextXAlignment.Left
	Input.ClearTextOnFocus = false
	Input.PlaceholderText = 'Prefix: "!"'
	Input.PlaceholderColor3 = Color3.fromRGB(162, 162, 162)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0269277841, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 35, 0, 33)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "AN"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.0697674453, 0, 0, 0)
	TextLabel_2.Size = UDim2.new(0, 35, 0, 33)
	TextLabel_2.Font = Enum.Font.SourceSansBold
	TextLabel_2.Text = "_X"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

	TextLabel_3.Parent = Frame
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(0.112607099, 0, 0.403846145, 0)
	TextLabel_3.Size = UDim2.new(0, 44, 0, 11)
	TextLabel_3.Font = Enum.Font.SourceSansBold
	TextLabel_3.Text = "REMAKE"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true
	TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

	UIStroke.Thickness = 2
	UIStroke.Parent = Frame

	animations.Name = 'animations'
	animations.Archivable = true
	animations.Parent = AN_XGUIREMAKE

	notify.Name = "notify"
	notify.Parent = AN_XGUIREMAKE
	notify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notify.BorderColor3 = Color3.fromRGB(0, 0, 0)
	notify.BorderSizePixel = 0
	notify.Position = UDim2.new(0.905747139, 0, 0.671641767, 0)
	notify.Size = UDim2.new(0, 430, 0, 56)
	notify.Visible = false

	UiGradient_n.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(100, 100, 100)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UiGradient_n.Rotation = -90
	UiGradient_n.Parent = notify

	Frame_n.Parent = notify
	Frame_n.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Frame_n.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_n.BorderSizePixel = 0
	Frame_n.Position = UDim2.new(0, 0, 0.267857134, 0)
	Frame_n.Size = UDim2.new(0, 430, 0, 1)

	title_n.Name = "title_n"
	title_n.Parent = notify
	title_n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title_n.BackgroundTransparency = 1.000
	title_n.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title_n.BorderSizePixel = 0
	title_n.Size = UDim2.new(0, 430, 0, 15)
	title_n.Font = Enum.Font.SourceSansBold
	title_n.Text = "Notify title_n"
	title_n.TextColor3 = Color3.fromRGB(0, 0, 0)
	title_n.TextScaled = true
	title_n.TextSize = 14.000
	title_n.TextWrapped = true

	TextLabel_n.Parent = notify
	TextLabel_n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_n.BackgroundTransparency = 1.000
	TextLabel_n.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_n.BorderSizePixel = 0
	TextLabel_n.Position = UDim2.new(0, 0, 0.285714298, 0)
	TextLabel_n.Size = UDim2.new(0, 430, 0, 40)
	TextLabel_n.Font = Enum.Font.SourceSansBold
	TextLabel_n.Text = "Hello this notify content ryaryayra yre yre yre yra yaryayra yre yre yre yrayaryayra yre yre yre yrayaryayra yre yre yre yrayaryayra yre yre yre yra"
	TextLabel_n.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_n.TextScaled = true
	TextLabel_n.TextSize = 14.000
	TextLabel_n.TextWrapped = true
	TextLabel_n.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_n.TextYAlignment = Enum.TextYAlignment.Top

	NotifyFolder.Parent = AN_XGUIREMAKE
	NotifyFolder.Name = 'NotifyFolder'
	
	HideButton.Parent = AN_XGUIREMAKE
	HideButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	HideButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HideButton.BorderSizePixel = 0
	HideButton.Position = UDim2.new(0.332946628, 0, 0.176972285, 0)
	HideButton.Size = UDim2.new(0, 30, 0, 32)
	HideButton.Font = Enum.Font.SourceSansBold
	HideButton.Text = "AN_X"
	HideButton.TextColor3 = Color3.fromRGB(218, 218, 218)
	HideButton.TextScaled = true
	HideButton.TextSize = 14.000
	HideButton.TextWrapped = true

	UICorner2.CornerRadius = UDim.new(9, 9)
	UICorner2.Parent = HideButton

	script.Parent = game.StarterGui

	--Scripts Properties:



	--Functions:


	
	if config.ExecutorAPI_Enabled == false then
		notify_client('Executor API Warning', 'The use of the Executor API is disabled to prevent errors during studio testing.', 5)
	end
	
	local function BuildSaveZone()
		local RandomName = math.random(1,9999999)
		local RandomName2 = math.random(1,9999999)
		local RandomNameOutput = RandomName..RandomName2 + RandomName2..RandomName
		local SaveZone_ = Instance.new('Model', workspace)
		SaveZone_.Name = 'SaveZone_'..RandomNameOutput

		RandomName = math.random(1,9999999)
		RandomName2 = math.random(1,9999999)
		RandomNameOutput = RandomName..RandomName2 + RandomName2..RandomName
		local SaveZoneSpawnPosition1 = Instance.new('Part', SaveZone_)
		SaveZoneSpawnPosition1.Name = 'SaveZoneSpawnPosition_'..RandomNameOutput
		SaveZoneSpawnPosition1['Anchored'] = true
		SaveZoneSpawnPosition1['BackSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['BottomSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['BrickColor'] = BrickColor.new('Hot pink')
		SaveZoneSpawnPosition1['CFrame'] = CFrame.new(35.5936203, 1294.2605, -532.793152, 0, 1, 0, -1, 0, 0, 0, 0, 1)
		SaveZoneSpawnPosition1['CanCollide'] = false
		SaveZoneSpawnPosition1['CanQuery'] = true
		SaveZoneSpawnPosition1['CanTouch'] = true
		SaveZoneSpawnPosition1['CastShadow'] = true
		SaveZoneSpawnPosition1['CollisionGroupId'] = 0
		SaveZoneSpawnPosition1['Color'] = Color3.new(1, 0, 0.74902)
		SaveZoneSpawnPosition1['CustomPhysicalProperties'] = nil
		SaveZoneSpawnPosition1['FrontSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['LeftSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['Locked'] = false
		SaveZoneSpawnPosition1['Massless'] = false
		SaveZoneSpawnPosition1['Material'] = Enum.Material.Plastic
		SaveZoneSpawnPosition1['Orientation'] = Vector3.new(0, 0, -90)
		SaveZoneSpawnPosition1['Position'] = Vector3.new(35.59362030029297, 1294.260498046875, -532.7931518554688)
		SaveZoneSpawnPosition1['Reflectance'] = 0
		SaveZoneSpawnPosition1['RightSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['RootPriority'] = 0
		SaveZoneSpawnPosition1['Rotation'] = Vector3.new(0, 0, -90)
		SaveZoneSpawnPosition1['Size'] = Vector3.new(4, 0.88218754529953, 2)
		SaveZoneSpawnPosition1['TopSurface'] = Enum.SurfaceType.Smooth
		SaveZoneSpawnPosition1['Transparency'] = 0

		RandomName = math.random(1,9999999)
		RandomName2 = math.random(1,9999999)
		RandomNameOutput = RandomName..RandomName2 + RandomName2..RandomName
		local SaveZonePlate1 = Instance.new('Part', SaveZone_)
		SaveZonePlate1.Name = 'SaveZonePlate_'..RandomNameOutput
		SaveZonePlate1['Anchored'] = true
		SaveZonePlate1['BackSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['BottomSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['BrickColor'] = BrickColor.new('Smoky grey')
		SaveZonePlate1['CFrame'] = CFrame.new(43.3864479, 1282.71216, -535.436157, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		SaveZonePlate1['CanCollide'] = true
		SaveZonePlate1['CanQuery'] = true
		SaveZonePlate1['CanTouch'] = true
		SaveZonePlate1['CastShadow'] = true
		SaveZonePlate1['CollisionGroupId'] = 0
		SaveZonePlate1['Color'] = Color3.new(0.356863, 0.364706, 0.411765)
		SaveZonePlate1['CustomPhysicalProperties'] = nil
		SaveZonePlate1['FrontSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['LeftSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['Locked'] = false
		SaveZonePlate1['Massless'] = false
		SaveZonePlate1['Material'] = Enum.Material.Plastic
		SaveZonePlate1['Orientation'] = Vector3.new(0, 0, 0)
		SaveZonePlate1['Position'] = Vector3.new(43.38644790649414, 1282.712158203125, -535.4361572265625)
		SaveZonePlate1['Reflectance'] = 0
		SaveZonePlate1['RightSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['RootPriority'] = 0
		SaveZonePlate1['Rotation'] = Vector3.new(0, 0, 0)
		SaveZonePlate1['Size'] = Vector3.new(69.87425231933594, 1, 49.0147819519043)
		SaveZonePlate1['TopSurface'] = Enum.SurfaceType.Smooth
		SaveZonePlate1['Transparency'] = 0

		config.SaveZoneCFrame = SaveZoneSpawnPosition1.CFrame
		config.SaveZoneBuilded = true
	end

	if config.AN_X_Started == false then
		task.spawn(function()
			notify_client('Hello!', 'Thank you for using our script! AN_X Version: '..	config.AN_X_Remake_Version, 3)
			task.wait(6)
			notify_client('About', 'if you encounter problems or bugs while using our script, please contact the developer in the telegram username @OpS_Tadjik', 8)
			task.wait(3)
			notify_client('Help', 'Enter !help in the AN_X input line to see all the AN_X commands')
		end)
	else
		notify_client('Restarting...', 'AN_X Has Been Restarted.', 3)
	end

	Commands.print = function(Sender,Arguments)
		local Message = table.concat(Arguments," ")
		print("From " ..Sender.Name..":\n"..Message)
	end

	Commands.playanimationid = function (na, Arg)
		local new = Instance.new('Animation', script)
		new.AnimationId = 'rbxassetid://'..Arg[1]
		new.Parent = animations
		local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(new)
		if Arg[2] then
			track.Looped = true
		end
		if Arg[3] then
			track:AdjustSpeed(Arg[3])
		end
		track:Play()
		print('Playing Animation: '.. new.AnimationId..' ...')
		notify_client('Enabled', 'Playing Animation: '.. new.AnimationId..' ...', 5)
	end

	Commands.bang = function(r, Arg)
		task.spawn(function()
			bangEnabled = true
			local Victim=Arg[1]
			H:Play()
			H:AdjustSpeed(Arg[2])
			game:GetService'RunService'.RenderStepped:Wait()
			if bangEnabled == true then
				C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(game:GetService'Players':FindFirstChild(Victim).Character:WaitForChild'HumanoidRootPart'.Position)
			end
		end)
	end

	Commands.stopbang = function()
		bangEnabled = false
		H:Stop()
	end

	Commands.help = function()

	end

	Commands.follow = function(Sender, Arg)
		task.spawn(function()
			local HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
			for i, p in pairs(workspace:GetChildren()) do
				if string.lower(p.Name) == Arg[1] then
					task.spawn(function()
						game:GetService'RunService'.Stepped:Connect(function()
							HumanoidRootPart.CFrame = p.HumanoidRootPart.CFrame
						end)
					end)
					notify_client('successfully', 'Following Player '.. Arg[1])
				end
			end
		end)
	end

	Commands.script2life = function(Sender)
		notify_client('successfully', '2 life Script Has Enabled')
		config.DobleLifeEnabled = true
		task.spawn(function()
			local targetPlayerName = Players.LocalPlayer.Name
			local invincibleHealth = 1e9

			local localchar = Players.LocalPlayer.Character

			local function main()
				localchar.HumanoidRootPart.Anchored = true
				localchar.HumanoidRootPart.Rotation += Vector3.new(0,0,90)
			end

			localchar:WaitForChild('Humanoid').HealthChanged:Connect(function()
				if config.DobleLifeEnabled == true then
					local hum = localchar:WaitForChild('Humanoid')
					local health = hum.Health

					hum.BreakJointsOnDeath = false

					if health <= 10 then
						repeat
							wait()
							main()
						until hum.Health > 1
						localchar.HumanoidRootPart.Anchored = false
					end

				end
			end)

			local function makeInvulnerable(player)
				local function onCharacterAdded(character)
					local humanoid = character:WaitForChild("Humanoid")
					humanoid.Health = invincibleHealth
					humanoid:GetPropertyChangedSignal("Health"):Connect(function()
						if config.DobleLifeEnabled == true then
							if humanoid.Health < invincibleHealth then
								humanoid.Health = invincibleHealth
							end
						end

					end)
				end

				if player.Name == targetPlayerName and config.DobleLifeEnabled == true then
					player.CharacterAdded:Connect(onCharacterAdded)

					if player.Character then
						onCharacterAdded(player.Character)
					end
				end
			end

			game.Players.PlayerAdded:Connect(makeInvulnerable)
			if config.DobleLifeEnabled == true then
				for _, player in ipairs(game.Players:GetPlayers()) do
					makeInvulnerable(player)
				end
			end
		end)
	end

	Commands.fling = function(Sender, Arg)
		local function FindPlayer()
			for _, Player in pairs(game.Players:GetPlayers()) do
				if string.lower(Player.Name) == Arg[1] then
					return Player
				end
			end
		end
		
		notify_client('successfully', 'Flinging '..Arg[1]..' ...')
		-- Settings

		-- Objects
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")

		local LocalPlayer = Players.LocalPlayer
		local Target = FindPlayer()

		local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
		BodyAngularVelocity.AngularVelocity = Vector3.new(10^6, 10^6, 10^6)
		BodyAngularVelocity.MaxTorque = Vector3.new(10^6, 10^6, 10^6)
		BodyAngularVelocity.P = 10^6

		-- Start
		Commands.follow(nil, {Arg[1]})
		if not Target then return end
		BodyAngularVelocity.Parent = LocalPlayer.Character.HumanoidRootPart

		while Target.Character.HumanoidRootPart and LocalPlayer.Character.HumanoidRootPart do
			RunService.RenderStepped:Wait()
			LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
			LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new()
		end

		BodyAngularVelocity.Parent = nil
	end

	Commands.selfsave = function(Sender)
		print('selfsave enabled')
		notify_client('successfully', 'Self Protect Enabled')
		task.spawn(function()
			Players.LocalPlayer.Character:WaitForChild('Humanoid').HealthChanged:Connect(function()

				if Players.LocalPlayer.Character.Humanoid.Health <= 15 and config.InSaveZone == false then
					local AnchoredState = Players.LocalPlayer.Character.HumanoidRootPart.Anchored

					if config.SaveZoneBuilded == false then
						BuildSaveZone()
					end

					repeat
						Players.LocalPlayer.Character.HumanoidRootPart.CFrame = config.SaveZoneCFrame
						AnchoredState = true
						print('repeated')

					until Players.LocalPlayer.Character.HumanoidRootPart.CFrame == config.SaveZoneCFrame

					config.InSaveZone = true
					AnchoredState = false
					print('repeat Ended')
					notify_client('Teleporting...', 'Self Protect It worked. You have less than 20 hp', 5)
				end

				if Players.LocalPlayer.Character.Humanoid.Health >= 25 and config.InSaveZone == true then
					for i, h in pairs(workspace:GetDescendants()) do
						if h:IsA('SpawnLocation') then
							Players.LocalPlayer.Character.HumanoidRootPart.CFrame = h.CFrame
							config.EnabledSpawnLocation = true
							break
						end
					end

					if config.EnabledSpawnLocation == false then
						Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)

					end

					config.InSaveZone = false
					config.EnabledSpawnLocation = false
					print('returning...')
					
					notify_client('Returning...', 'You now have more than 25 hp', 5)

				end
			end)
		end)
	end

	Commands.walkspeed = function(Sender, Arg)
		Players.LocalPlayer.Character.Humanoid.WalkSpeed = Arg[1]
		notify_client('successfully', 'WalkSpeed is set to '..Arg[1])
	end

	Commands.jumppower = function(Sender, Arg)
		Players.LocalPlayer.Character.Humanoid.JumpPower = Arg[1]
		notify_client('successfully', 'JumpPower is set to '..Arg[1])
	end

	Commands.infjump = function()
		local jump = game.Players.LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.JumpButton
		config.InfinintyJumpEnabled = not config.InfinintyJumpEnabled
		
		if config.InfinintyJumpEnabled == true then
			notify_client('successfully', 'Infininty Jump Enabled')
		elseif config.InfinintyJumpEnabled == false then
			notify_client('successfully', 'Infininty Jump Disabled')
		end
		
		UserInput.InputBegan:Connect(function(InputObject)
			if InputObject.KeyCode == Enum.KeyCode.Space and config.InfinintyJumpEnabled == true then
				local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") 
				Humanoid:ChangeState("Jumping") 
				wait(0.1) 
				Humanoid:ChangeState("Seated") 
			end
			local jumpconnect = jump.MouseButton1Down:Connect(function() 
				if config.InfinintyJumpEnabled == true then
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) 
				end
			end) 
		end)
	end
	
	Commands.unload = function(Sender)
		Frame:Destroy()
		AN_XGUIREMAKE:Destroy()
		for i, c in pairs(config) do
			c = nil
		end
		notify_client('Unloaded', 'AN_X Unloaded')
	end
	
	Commands.changeskybox = function(Sender, Arg)
		local skybox = game.Lighting:FindFirstChildOfClass('Sky')
		local Id = Arg[1]

		if skybox then
			local oldskybox = skybox
			local newskybox = Instance.new('Sky')
			newskybox.Parent = game.Lighting
			newskybox.SkyboxBk = "rbxassetid://"..Id
			newskybox.SkyboxDn = "rbxassetid://"..Id
			newskybox.SkyboxFt = "rbxassetid://"..Id
			newskybox.SkyboxLf = "rbxassetid://"..Id
			newskybox.SkyboxRt = "rbxassetid://"..Id
			newskybox.SkyboxUp = "rbxassetid://"..Id
			oldskybox:Destroy()
			notify_client('ONLY FOR CLIENT', "Due to the fact that injectors can only execute client scripts, other players will not be able to see changes that do not change your character's parameters.", 5)
		end
	end

	Commands.buildduck = function(Sender)
		local buildcframe = Instance.new('Part', workspace)
		buildcframe.Anchored = true
		buildcframe.Position = Vector3.new(0,0,0)
		buildcframe.Orientation = Vector3.new(0,0,0)
		local startposition = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = buildcframe.CFrame
		Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		BuildSusPencil()
		task.wait(0.1)
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = startposition
		Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		buildcframe:Destroy()
		notify_client('ONLY FOR CLIENT', "Due to the fact that injectors can only execute client scripts, other players will not be able to see changes that do not change your character's parameters.", 5)
	end
	
	Commands.setsuntexture = function(Sender, Arg)
		local texture = Arg[1]
		local sun = game.Lighting:FindFirstChildOfClass('Sky')
		if sun then
			sun.SunTextureId = 'rbxassetid://'..texture
			notify_client('ONLY FOR CLIENT', "Due to the fact that injectors can only execute client scripts, other players will not be able to see changes that do not change your character's parameters.", 5)
		end
	end
	
	Commands.setmoontexture = function(Sender, Arg)
		local texture = Arg[1]
		local moon = game.Lighting:FindFirstChildOfClass('Sky')
		if moon then
			moon.MoonTextureId = 'rbxassetid://'..texture
			notify_client('ONLY FOR CLIENT', "Due to the fact that injectors can only execute client scripts, other players will not be able to see changes that do not change your character's parameters.", 5)
		end
	end
	
	Commands.lol = function(Sender)
		local buildcframe = Instance.new('Part', workspace)
		buildcframe.Anchored = true
		buildcframe.Position = Vector3.new(0,0,0)
		buildcframe.Orientation = Vector3.new(0,0,0)
		local startposition = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = buildcframe.CFrame
		Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		for i, bp in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if bp:IsA('Part') or bp:IsA('MeshPart') then
				bp.Transparency = 1
			end
		end
		BuildCostomBody()

		task.wait(0.1)
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = startposition
		Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		buildcframe:Destroy()
		notify_client('ONLY FOR CLIENT', "Due to the fact that injectors can only execute client scripts, other players will not be able to see changes that do not change your character's parameters.", 5)
	end
	
	Commands.velocitywalk = function(Sender, Arg)
		config.VelocityWalk_Enabled = not config.VelocityWalk_Enabled
		local velocity
		local speed
		if config.VelocityWalk_Enabled == true then
			velocity = Instance.new('BodyVelocity', Players.LocalPlayer.Character.HumanoidRootPart)
			if Arg[1] ~= nil then
				speed = Arg[1]
				print(speed)
			else
				speed = 20
				print(speed)
			end
		end
		UserInput.InputBegan:Connect(function(Input, gpe)
			if gpe == false and config.VelocityWalk_Enabled == true and velocity ~= nil then
				if Input.KeyCode == Enum.KeyCode.W or Input.KeyCode == Enum.KeyCode.S or Input.KeyCode == Enum.KeyCode.A or Input.KeyCode == Enum.KeyCode.D then
					velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					velocity.Velocity = Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * speed
				end
			end
		end)
		UserInput.InputChanged:Connect(function(Input, gpe)
			if gpe == false and config.VelocityWalk_Enabled == true and velocity ~= nil then
				if Input.KeyCode == Enum.KeyCode.W or Input.KeyCode == Enum.KeyCode.S or Input.KeyCode == Enum.KeyCode.A or Input.KeyCode == Enum.KeyCode.D then
					velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					velocity.Velocity = Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * speed
				end
			end
		end)
		UserInput.InputEnded:Connect(function()
			if velocity ~= nil then
				velocity.MaxForce = Vector3.new(0,0,0)
			end
		end)
		if config.VelocityWalk_Enabled == true then
			notify_client('successfully', 'Velocity Walk Enabled')
			if UserInput.KeyboardEnabled == false then
				notify_client('Warning', 'This command is intended for use with a keyboard only.')
			end
		else
			notify_client('successfully', 'Velocity Walk Disabled')
			if velocity ~= nil then
				velocity.MaxForce = Vector3.new(0,0,0)
				velocity:Destroy()
			end
		end
	end

	local function IsAdmin(Player)
		for _,Admin in pairs (Admins) do
			print(Admin,Player)
			if type(Admin) == "string" and string.lower(Admin) == string.lower(Player.Name) then
				return true
			elseif type(Admin) == "number" and Admin == Player.UserId then
				return true
		--[[elseif type(Admin) == "table" then
			local Rank = Player:GetRankInGroup(Admin.GroupId)
			if Rank >= (Admin.RankId or 1) then
				return true
			end]]
			end
		end
		return false
	end

	local function ParseMessage(Player,Message)
		Message = string.lower(Message)
		local PrefixMatch = string.match(Message,"^"..Prefix)

		if PrefixMatch then
			Message = string.gsub(Message,PrefixMatch,"",1)
			local Arguments = {}

			for Argument in string.gmatch(Message,"[^%s]+") do
				table.insert(Arguments,Argument)
			end

			local CommandName = Arguments[1]
			table.remove(Arguments,1)
			local CommandFunc = Commands[CommandName]

			if CommandFunc ~= nil then
				CommandFunc(Player,Arguments)
			end
		end
	end

	Input.FocusLost:Connect(function(enter)
		if enter == true then
			ParseMessage(Admins[1], Input.Text)
		end
	end)
	
	HideButton.MouseButton1Click:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
	
	warn('Main Code AN_X Remake Builded!')
	config.AN_X_Started = true
	
end

BuildMain()

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	BuildMain()
end)

if config.ExecutorAPI_Enabled == true then
	setclipboard("@OpS_Tadjik")
	notify_client('Clipboard', 'Developer Contact telegram username added to your Clipboard', 5)
end

notify_client('Warning Beta', 'This is a beta version of this script, so some functions may not be optimized or may not work well.', 5)
