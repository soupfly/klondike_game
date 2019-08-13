cardList = {
	[1] = {
		"heart", 
		"spade", 
		"diamond", 
		"clover"
	},
	[2] = {
		"ace", 
		"two", 
		"three", 
		"four", 
		"five", 
		"six", 
		"seven", 
		"eight", 
		"nine",
		"ten",
		"jack",
		"queen",
		"king"
	},
	[3] = {}
}
--prints the position of the shuffled cards
--[[
for i = 1, #cardList[3], 1 do
		print(cardList[3][i][1] .. "  " .. cardList[3][i][2])
end]]--
