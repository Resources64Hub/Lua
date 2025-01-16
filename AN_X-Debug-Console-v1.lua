local PrintText = Instance.new('BindableEvent')
local PrintWarning = Instance.new('BindableEvent')
local PrintError = Instance.new('BindableEvent')
local AN_X_Connect = Instance.new('BindableEvent')
local ShareInput = Instance.new('BindableEvent')
local UserInput = game:GetService('UserInputService')
local Connected_AN_X_Properties = {
	gui = nil,
	an_xMainScript = nil
}
local Prefix = ''
local Commands = {}
local Admins = {
	game.Players.LocalPlayer.Name
}
script.Parent = game.Players.LocalPlayer:WaitForChild('PlayerScripts')

	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local AN_X_DEbugConsole = Instance.new("ScreenGui")
	local Frame = Instance.new("ScrollingFrame")
	local TextLabel = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local AN_X__DebugConsoleAssets = Instance.new("Folder")
	local TextExample = Instance.new("Folder")
	local Warning = Instance.new("TextLabel")
	local Error = Instance.new("TextLabel")
	local Print = Instance.new("TextLabel")
	local TextBox = Instance.new("TextBox")

	--Properties:

	AN_X_DEbugConsole.Name = "AN_X_DEbugConsole"
	AN_X_DEbugConsole.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	AN_X_DEbugConsole.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AN_X_DEbugConsole.Enabled = false
	AN_X_DEbugConsole.ResetOnSpawn = false

	Frame.Name = "Frame"
	Frame.Parent = AN_X_DEbugConsole
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = false
	Frame.Selectable = false
	Frame.Size = UDim2.new(0, 555, 0, 302)
	Frame.Visible = true

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 554, 0, 15)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "AN_X Debug Console"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UIListLayout.Parent = Frame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	AN_X__DebugConsoleAssets.Name = "AN_X__DebugConsoleAssets"
	AN_X__DebugConsoleAssets.Parent = game:GetService('ReplicatedStorage')

	TextExample.Name = "TextExample"
	TextExample.Parent = AN_X__DebugConsoleAssets

	Warning.Name = "Warning"
	Warning.Parent = TextExample
	Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Warning.BackgroundTransparency = 1.000
	Warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Warning.BorderSizePixel = 0
	Warning.Size = UDim2.new(0, 554, 0, 15)
	Warning.Font = Enum.Font.SourceSansBold
	Warning.Text = "Warning Messege"
	Warning.TextColor3 = Color3.fromRGB(255, 238, 0)
	Warning.TextSize = 14.000
	Warning.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
	Warning.TextXAlignment = Enum.TextXAlignment.Left

	Error.Name = "Error"
	Error.Parent = TextExample
	Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Error.BackgroundTransparency = 1.000
	Error.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Error.BorderSizePixel = 0
	Error.Size = UDim2.new(0, 554, 0, 15)
	Error.Font = Enum.Font.SourceSansBold
	Error.Text = "error Messege"
	Error.TextColor3 = Color3.fromRGB(255, 0, 0)
	Error.TextSize = 14.000
	Error.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
	Error.TextXAlignment = Enum.TextXAlignment.Left

	Print.Name = "Print"
	Print.Parent = TextExample
	Print.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Print.BackgroundTransparency = 1.000
	Print.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Print.BorderSizePixel = 0
	Print.Size = UDim2.new(0, 554, 0, 15)
	Print.Font = Enum.Font.SourceSansBold
	Print.Text = "Print Messege"
	Print.TextColor3 = Color3.fromRGB(255, 255, 255)
	Print.TextSize = 14.000
	Print.TextXAlignment = Enum.TextXAlignment.Left

	TextBox.Parent = AN_X_DEbugConsole
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 0.500
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0, 0, 0.64605546, 0)
	TextBox.Size = UDim2.new(0, 554, 0, 19)
	TextBox.Font = Enum.Font.SourceSansBold
	TextBox.PlaceholderColor3 = Color3.fromRGB(61, 61, 61)
	TextBox.PlaceholderText = "Input Line"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	
	PrintText.Name = 'PrintText'
	PrintText.Parent = AN_X__DebugConsoleAssets
	
	PrintWarning.Name = 'PrintWarningText'
	PrintWarning.Parent = AN_X__DebugConsoleAssets
	
	PrintError.Name = 'PrintErrorText'
	PrintError.Parent = AN_X__DebugConsoleAssets
	
	AN_X_Connect.Name = 'Connect'
	AN_X_Connect.Parent = AN_X__DebugConsoleAssets
	
	ShareInput.Name = 'ShareInput'
	ShareInput.Parent = AN_X__DebugConsoleAssets
	
	AN_X_Connect.Event:Connect(function(Gui, AN_XScript)
		Connected_AN_X_Properties.gui = Gui
		Connected_AN_X_Properties.an_xMainScript = AN_XScript
		PrintText:Fire('AN_X Connected')
	end)
	
	PrintText.Event:Connect(function(text)
		local newText = Print:Clone()
		newText.Text = text
		newText.Parent = Frame
	end)
	
	PrintWarning.Event:Connect(function(text)
		local newText = Warning:Clone()
		newText.Text = text
		newText.Parent = Frame
	end)
	
	PrintError.Event:Connect(function(text)
		local newText = Error:Clone()
		newText.Text = text
		newText.Parent = Frame
	end)
	
	Commands.restart_an_x = function()
		if Connected_AN_X_Properties.gui ~= nil and Connected_AN_X_Properties.an_xMainScript ~= nil then
			local AN_X_NewScript = Connected_AN_X_Properties.an_xMainScript:Clone()
			AN_X_NewScript.Enabled = false
			AN_X_NewScript.Parent = game.Players.LocalPlayer.PlayerGui
			Connected_AN_X_Properties.an_xMainScript:Destroy()
			Connected_AN_X_Properties.gui:Destroy()
			AN_X_NewScript.Enabled = true
		end
	end
	
	Commands.dctof = function()
		TextBox.ClearTextOnFocus = false
		PrintWarning:Fire('ClearTextOnFocus has been Disabled')
	end
	
	Commands.print = function(Sender, Arg)
		local totaltext = ''
		for i, t in pairs(Arg) do
			totaltext = totaltext.. ' '.. Arg[i]
		end
		PrintText:Fire(totaltext)
	end
	
	Commands.kickself = function()
		game.Players.LocalPlayer:Kick('You have been kicked by the AN_X Debuger.')
	end
	
	UserInput.InputBegan:Connect(function(IO, GPE)
		print('Pressed')
		if GPE == false and IO.KeyCode == Enum.KeyCode.F4 then
			AN_X_DEbugConsole.Enabled = not AN_X_DEbugConsole.Enabled
		end
	end)
	
	local function ParseMessage(Player,Message)
		local v = '> '..Message
		local s = nil
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
				s = true
				CommandFunc(Player,Arguments)
			else
				s = false
			end
		end
		PrintText:Fire(v)
		if s == false then
			PrintError:Fire('The command was not found. Please make sure that you entered the correct command correctly.')
		end
	end
	
	TextBox.FocusLost:Connect(function(enter)
		if enter == true then
			ParseMessage(Admins[1], TextBox.Text)
		end
	end)

print('Deb')
