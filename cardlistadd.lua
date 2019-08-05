function cardlistAdd()
	local k = 1
	for i = 1, 4, 1 do
		for j = 1, 13, 1 do
			cardList[3][k] = {
				cardList[1][i], cardList[2][j]
			}
			k = k + 1
		end
	end
end
