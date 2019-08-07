cardList = {
	[1] = {--faces
		[1] = "heart",
		[2] = "spade",
		[3] = "diamond",
		[4] = "clover"
	},
	[2] = {--numbers
		[1] = "ace",
		[2] = "two",
		[3] = "three",
		[4] = "four",
		[5] = "five", 
		[6] = "six",
		[7] = "seven",
		[8] = "eight",
		[9] = "nine",
		[10] = "ten",
		[11] = "jack",
		[12] = "queen",
		[13] = "king",
	},
	[3] = {}
}
cardlistAdd()

cardList[3] = shuffle(cardList[3])
--prints the position of the shuffled cards
for i = 1, 52, 1 do
	print(cardList[3][i][1] .. "  " .. cardList[3][i][2])
end
