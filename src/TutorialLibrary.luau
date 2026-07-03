local Tutorial_Library_2 = require(script.Tutorial_Library_2)
local TweenService = game:GetService("TweenService")

local Tutorial = {}

local ZIndex = 5
local currentOutlineStroke = nil;

function Tutorial:targetGui(config)
	self["Config"] = {
		Target = config.Target,
		Offset = config.Offset or UDim.new(0,15),
		Color = config.Color or Color3.fromRGB(0, 0, 0),
		Transparency = config.Transparency or 0.5,
		isAnim = config.isAnim or true,
	}
	if not self.Config.Target then warn("Cant Find Button; Please Check Path") end
	
	local Config = self.Config
	self[Config.Target.Name] = Config.Target.ZIndex
	Config.Target.ZIndex = ZIndex
	
	currentOutlineStroke = Tutorial_Library_2.GetOutlineStoroke(Config.Target)
	
	currentOutlineStroke.Color = Config.Color
	currentOutlineStroke.Transparency = Config.Transparency
	if Config.isAnim == true then
		
		local TweenInfo = TweenInfo.new(
			0.35,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.Out,
			0,
			false
		)
		
		local CreateTween = TweenService:Create(currentOutlineStroke, TweenInfo, {BorderOffset = Config.Offset})
		CreateTween:Play()
	else
		currentOutlineStroke.BorderOffset = Config.Offset
	end
	
	return currentOutlineStroke
end

function Tutorial.deleteOutline(target)
	if currentOutlineStroke or target:FindFirstChild("For_Tutorial") then
		currentOutlineStroke:Destroy()
		target.ZIndex = Tutorial[target.Name] or 1
	end
end

return Tutorial
