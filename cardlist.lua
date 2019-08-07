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
cardlistAdd()
print(#cardList)
print(#cardList[1])
print(#cardList[2])
print(#cardList[3])
cardList[3] = shuffle(cardList[3])
--prints the position of the shuffled cards
--[[
for i = 1, 52, 1 do
		print(cardList[3][i][1] .. "  " .. cardList[3][i][2])

end
]]--
