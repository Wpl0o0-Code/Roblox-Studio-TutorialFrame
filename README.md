# Roblox-Studio-TutorialFrame
- You can use it on Roblox Studio
- Add TutorialLibray to your game ReplicatedStorage
- TutorialLibrary_2 need parent to TutorialLibray

## Use Example:
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
