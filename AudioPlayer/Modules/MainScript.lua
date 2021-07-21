local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local Modules = {
	["UI_GeneralData"] = HttpService:GetAsync("https://raw.githubusercontent.com/Sorbious/ROBLOX/main/AudioPlayer/Modules/UI_GeneralData.lua");
}

local MAINSCRIPT = {}

function MAINSCRIPT:CreateUI(playerGui)
  	local UI_GeneralData = loadstring(Modules["UI_GeneralData"])
	
	-- Create the UI
	local ScreenGui = Instance.new("ScreenGui", playerGui)
	ScreenGui.Name = "AudioPlayerHUD"
	ScreenGui.Enabled = true
	ScreenGui.ResetOnSpawn = true
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	local MainContainer = Instance.new("Frame", ScreenGui)
	MainContainer.Name = "MainContainer"
	MainContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	MainContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainContainer.BackgroundTransparency = 1
	MainContainer.BorderSizePixel = 0
	MainContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainContainer.Size = UDim2.new(0.7, 0, 0.7)
	MainContainer.Visible = true
	MainContainer.ZIndex = 1
	MainContainer.ClipsDescendants = true

	local UIListLayout_MainContainer = Instance.new("UIListLayout", MainContainer)
	UIListLayout_MainContainer.Padding = UDim.new(0, 0)
	UIListLayout_MainContainer.FillDirection = Enum.FillDirection.Vertical
	UIListLayout_MainContainer.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_MainContainer.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_MainContainer.VerticalAlignment = Enum.VerticalAlignment.Top

	local TopBar = Instance.new("Frame", MainContainer)
	TopBar.Name = "TopBar"
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBar.BackgroundTransparency = 1
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(1, 0, 0.065, 0)
	TopBar.Visible = true
	TopBar.ClipsDescendants = true
	TopBar.ZIndex = 1

	local Background_TopBar = Instance.new("Frame", TopBar)
	Background_TopBar.Name = "Background"
	Background_TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background_TopBar.BackgroundTransparency = 0
	Background_TopBar.BorderSizePixel = 0
	Background_TopBar.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background_TopBar.Size = UDim2.new(1, 0, 1, 0)
	Background_TopBar.Visible = true
	Background_TopBar.ZIndex = 1

	local TitleBar = Instance.new("Frame", TopBar)
	TitleBar.Name = "TitleBar"
	TitleBar.AnchorPoint = Vector2.new(0, 0.5)
	TitleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleBar.BackgroundTransparency = 1
	TitleBar.BorderSizePixel = 0
	TitleBar.Position = UDim2.new(0, 0, 0.5, 0)
	TitleBar.Size = UDim2.new(0.35, 0, 0.9, 0)
	TitleBar.ZIndex = 1

	local UIListLayout_TitleBar = Instance.new("UIListLayout", TitleBar)
	UIListLayout_TitleBar.Padding = UDim.new(0, 0)
	UIListLayout_TitleBar.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_TitleBar.HorizontalAlignment = Enum.HorizontalAlignment.Left
	UIListLayout_TitleBar.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_TitleBar.VerticalAlignment = Enum.VerticalAlignment.Center

	local IconFrame = Instance.new("Frame", TitleBar)
	IconFrame.Name = "IconFrame"
	IconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IconFrame.BackgroundTransparency = 1
	IconFrame.BorderSizePixel = 0
	IconFrame.Size = UDim2.new(0.2, 0, 1, 0)
	IconFrame.ZIndex = 1

	local Icon_IconFrame = Instance.new("ImageLabel", IconFrame)
	Icon_IconFrame.Name = "Icon"
	Icon_IconFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_IconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_IconFrame.BackgroundTransparency = 1
	Icon_IconFrame.BorderSizePixel = 0
	Icon_IconFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_IconFrame.Size = UDim2.new(0.4, 0, 0.7, 0)
	Icon_IconFrame.ZIndex = 1
	Icon_IconFrame.Image = "rbxassetid://".. UI_GeneralData()["ICONS"]["TOPBAR"]["TITLEBAR"]["ICON"]["ASSET-ID"]
	Icon_IconFrame.ImageColor3 = UI_GeneralData()["ICONS"]["TOPBAR"]["TITLEBAR"]["ICON"]["COLORS"]["Default"]
	Icon_IconFrame.ScaleType = Enum.ScaleType.Stretch

	local UIAspectRatioConstraint_Icon = Instance.new("UIAspectRatioConstraint", Icon_IconFrame)
	UIAspectRatioConstraint_Icon.AspectRatio = 1.051
	UIAspectRatioConstraint_Icon.AspectType = Enum.AspectType.FitWithinMaxSize
	UIAspectRatioConstraint_Icon.DominantAxis = Enum.DominantAxis.Width

	local TitleFrame = Instance.new("Frame", TitleBar)
	TitleFrame.Name = "TitleFrame"
	TitleFrame.AnchorPoint = Vector2.new(0, 0)
	TitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleFrame.BackgroundTransparency = 1
	TitleFrame.BorderSizePixel = 0
	TitleFrame.Size = UDim2.new(0.8, 0, 1, 0)
	TitleFrame.ZIndex = 1

	local TitleTag = Instance.new("TextLabel", TitleFrame)
	TitleTag.Name = "TitleTag"
	TitleTag.AnchorPoint = Vector2.new(0, 0.5)
	TitleTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleTag.BackgroundTransparency = 1
	TitleTag.BorderSizePixel = 0
	TitleTag.Position = UDim2.new(0, 0, 0.5, 0)
	TitleTag.Size = UDim2.new(1, 0, 1, 0)
	TitleTag.ZIndex = 1 
	TitleTag.RichText = true
	TitleTag.Text = '<font color="#ff0000"><b>RBLX</b></font> Music Player'
	TitleTag.TextColor3 = Color3.fromRGB(0, 0, 0)
	TitleTag.TextScaled = true
	TitleTag.TextSize = 14
	TitleTag.TextXAlignment = Enum.TextXAlignment.Left
	TitleTag.TextYAlignment = Enum.TextYAlignment.Center

	local ContentContainer = Instance.new("Frame", MainContainer)
	ContentContainer.Name = "ContentContainer"
	ContentContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	ContentContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContentContainer.BackgroundTransparency = 1
	ContentContainer.BorderSizePixel = 0
	ContentContainer.Size = UDim2.new(1, 0, 0.935, 0)
	ContentContainer.ZIndex = 1

	local Background_ContentContainer = Instance.new("Frame", ContentContainer)
	Background_ContentContainer.Name = "Background"
	Background_ContentContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_ContentContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background_ContentContainer.BackgroundTransparency = 0
	Background_ContentContainer.BorderSizePixel = 0
	Background_ContentContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background_ContentContainer.Size = UDim2.new(1, 0, 1, 0)
	Background_ContentContainer.Visible = true
	Background_ContentContainer.ZIndex = 1

end


return MAINSCRIPT
