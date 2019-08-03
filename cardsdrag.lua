if mousePressed then
	
	local carddrag
	for i = 1, 12, 1 do
		if cardSlots[i][9] then
			carddrag = cardSlots[i]
			print(carddrag[1])
		end
	end
	if carddrag then
			--drag card when the mouse moves
		if mousexA then
			mousexB = love.mouse.getX()
			mouseyB = love.mouse.getY()
			mousexB = mousexB - mousexA
			mouseyB = mouseyB - mouseyA
			carddrag[6] = carddrag[6] + mousexB
			carddrag[7] = carddrag[7] + mouseyB
		end
	else
		mousexA = love.mouse.getX()
		mouseyA = love.mouse.getY()
		mousexB = 0
		mouseyB = 0
	end
end--main has cardstouch disabled because it will drag multiple cards at once. I need to think of a better method

		
	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardstouch.lua")
	else
		dofile("card/cardstouch.lua")
	end
	mousexA = love.mouse.getX()
	mouseyA = love.mouse.getY()
	mousexB = 0
	mouseyB = 0
