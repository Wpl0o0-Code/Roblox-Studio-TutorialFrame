# Roblox-Studio-TutorialFrame
- You can use it on Roblox Studio
- Add TutorialLibray to your game ReplicatedStorage
- TutorialLibrary_2 need parent to TutorialLibray

## TargetGui Code:
```lua
Tutorial:targetGui({
	Target = Gui["Button1"], -- Gui Path 
	Offset = UDim.new(0,15), -- Outline offset
	Color = Color3.fromRGB(0, 0, 0), -- Outline color
	Transparency = 0.5, -- Outline Transparency
	isAnim = true, -- Outline TweenAnimation
})
```

## DeleteOutline Code:
```lua
Tutorial.deleteOutline(Gui["Button1"])
```

## Example Code Button:
```lua

task.wait(1.5)
local Tutorial = require(game:GetService("ReplicatedStorage").TutorialLibrary)
local Gui = script.Parent

Tutorial:targetGui({
	Target = Gui["Button1"], -- Gui Path 
	Offset = UDim.new(0,15), -- Outline offset
	Color = Color3.fromRGB(0, 0, 0), -- Outline color
	Transparency = 0.5, -- Outline Transparency
	isAnim = true, -- Outline TweenAnimation
})

Gui["Button1"].Activated:Connect(function()
	-- Delete Old
	Tutorial.deleteOutline(Gui["Button1"])
	-- Set to Button 2
	Tutorial:targetGui({
		Target = Gui["Button2"],
		Offset = UDim.new(0,15),
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 0.5,
		isAnim = true,
	})
end)

```
## Example Code Frames
```lua
	local Tutorial = require(game:GetService("ReplicatedStorage").TutorialLibrary)
	local Gui = script.Parent
	
	Tutorial:targetGui({
		Target = Gui["Frame"],
	})
	
	task.wait(3)
	Tutorial.deleteOutline(Gui["Frame"])
	
	Tutorial:targetGui({
		Target = Gui["TextLabel"],
	})
```
