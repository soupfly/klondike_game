function bool_check()
	local count = 0
	for i = 1, 12, 1 do
		if cardSlots[i][9] then
			count = count + 1
		end
	end
	if count == 1 then
		return true
	else
		return false
	end
end


for i = 1, 12, 1 do

	print(tostring(cardSlots[i][1]) .. "  " .. tostring(cardSlots[i][9]))
end


if mousePressed then
	local cards = carSlots
	local carddrag
	if bool_check() then
		for i = 1, 12, 1 do
			if cardSlots[i][9] then
				dragging = true
				carddrag = cardSlots[i]
			end
		end
	end

	if not carddrag then

		dragging = false
			--drag card when the mouse moves
		mousexA = love.mouse.getX()
		mouseyA = love.mouse.getY()
		mousexB = 0
		mouseyB = 0
	else
		if mousexA then
			mousexB = love.mouse.getX()
			mouseyB = love.mouse.getY()
			mousexB = mousexB - mousexA
			mouseyB = mouseyB - mouseyA
			carddrag[6] = carddrag[6] + mousexB
			carddrag[7] = carddrag[7] + mouseyB
		end
	end
else
	dragging = false
end
if not dragging then
	for i = 1, 12, 1 do
		cardSlots[i][9] = cardsTouch(cardSlots[i])
	end
end
--main has cardstouch disabled because it will drag multiple cards at once. I need to think of a better method

	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardstouch.lua")
	else
		dofile("card/cardstouch.lua")
	end
	mousexA = love.mouse.getX()
	mouseyA = love.mouse.getY()
	mousexB = 0
	mouseyB = 0
