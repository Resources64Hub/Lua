local function BuildMain()
	-- Gui to Lua
	-- Version: 3.2

	--Variables:

	_G.AN_X_Remake_Version = 'v0.7.3-Beta'
	local Admins = {
		game.Players.LocalPlayer.Name
	}
	local Prefix = "!"
	local Players= game:GetService("Players")
	local Commands = {}
	local SaveZoneBuilded = false
	local SaveZoneCFrame = nil
	local InSaveZone = false
	local DobleLifeEnabled = false
	local EnabledSpawnLocation = false
	local InfinintyJumpEnabled = false

	--Scripts Variables:

	local A=Instance.new'Animation'
	local P=game:GetService'Players'.LocalPlayer
	local C=P.Character or P.CharacterAdded:Wait()
	A.AnimationId='rbxassetid://148840371'
	local H=C:WaitForChild'Humanoid':LoadAnimation(A)
	local fuckEnabled = false

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
	AN_XGUIREMAKE.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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

	local function notify_client(notify_title, notify_content, notify_lifetime)
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

		SaveZoneCFrame = SaveZoneSpawnPosition1.CFrame
		SaveZoneBuilded = true
	end

	task.spawn(function()
		notify_client('Hello!', 'Thank you for using our script! AN_X Version: '..	_G.AN_X_Remake_Version, 3)
		task.wait(6)
		notify_client('About', 'if you encounter problems or bugs while using our script, please contact the developer in the telegram username @OpS_Tadjik', 8)
	end)

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

	Commands.fuck = function(r, Arg)
		task.spawn(function()
			fuckEnabled = true
			local Victim=Arg[1]
			H:Play()
			H:AdjustSpeed(Arg[2])
			game:GetService'RunService'.RenderStepped:Wait()
			if fuckEnabled == true then
				C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(game:GetService'Players':FindFirstChild(Victim).Character:WaitForChild'HumanoidRootPart'.Position)
			end
		end)
	end

	Commands.stopfuck = function()
		fuckEnabled = false
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
		DobleLifeEnabled = true
		task.spawn(function()
			local targetPlayerName = Players.LocalPlayer.Name
			local invincibleHealth = 1e9

			local localchar = Players.LocalPlayer.Character

			local function main()
				localchar.HumanoidRootPart.Anchored = true
				localchar.HumanoidRootPart.Rotation += Vector3.new(0,0,90)
			end

			localchar:WaitForChild('Humanoid').HealthChanged:Connect(function()
				if DobleLifeEnabled == true then
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
						if DobleLifeEnabled == true then
							if humanoid.Health < invincibleHealth then
								humanoid.Health = invincibleHealth
							end
						end

					end)
				end

				if player.Name == targetPlayerName and DobleLifeEnabled == true then
					player.CharacterAdded:Connect(onCharacterAdded)

					if player.Character then
						onCharacterAdded(player.Character)
					end
				end
			end

			game.Players.PlayerAdded:Connect(makeInvulnerable)
			if DobleLifeEnabled == true then
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

				if Players.LocalPlayer.Character.Humanoid.Health <= 15 and InSaveZone == false then
					local AnchoredState = Players.LocalPlayer.Character.HumanoidRootPart.Anchored

					if SaveZoneBuilded == false then
						BuildSaveZone()
					end

					repeat
						Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SaveZoneCFrame
						AnchoredState = true
						print('repeated')

					until Players.LocalPlayer.Character.HumanoidRootPart.CFrame == SaveZoneCFrame

					InSaveZone = true
					AnchoredState = false
					print('repeat Ended')
					notify_client('Teleporting...', 'Self Protect It worked. You have less than 20 hp', 5)
				end

				if Players.LocalPlayer.Character.Humanoid.Health >= 25 and InSaveZone == true then
					for i, h in pairs(workspace:GetDescendants()) do
						if h:IsA('SpawnLocation') then
							Players.LocalPlayer.Character.HumanoidRootPart.CFrame = h.CFrame
							EnabledSpawnLocation = true
							break
						end
					end

					if EnabledSpawnLocation == false then
						Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)

					end

					InSaveZone = false
					EnabledSpawnLocation = false
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
		InfinintyJumpEnabled = not InfinintyJumpEnabled
		
		if InfinintyJumpEnabled == true then
			notify_client('successfully', 'Infininty Jump Enabled')
		elseif InfinintyJumpEnabled == false then
			notify_client('successfully', 'Infininty Jump Disabled')
		end
		
		UserInput.InputBegan:Connect(function(InputObject)
			if InputObject.KeyCode == Enum.KeyCode.Space and InfinintyJumpEnabled == true then
				local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") 
				Humanoid:ChangeState("Jumping") 
				wait(0.1) 
				Humanoid:ChangeState("Seated") 
			end
			local jumpconnect = jump.MouseButton1Down:Connect(function() 
				if InfinintyJumpEnabled == true then
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) 
				end
			end) 
		end)
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

end

BuildMain()

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	BuildMain()
end)
