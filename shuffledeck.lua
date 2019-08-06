function shuffle(deck)
	local deck = deck
	for i = 1, 52 do 
		local random1 = love.math.random(52)
		local random2 = love.math.random(52)
		deck[random1], deck[random2] = deck[random2], deck[random1]
	end
	return deck
end
