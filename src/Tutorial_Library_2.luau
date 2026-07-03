local Tutorial_Library_2 = {}

function Tutorial_Library_2.GetOutlineStoroke(Button)
	local outlineStroke = Instance.new("UIStroke")
	outlineStroke.Name = "For_Tutorial"
	outlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	outlineStroke.Thickness = 1500
	outlineStroke.Parent = Button
	
	return outlineStroke
end

return Tutorial_Library_2
