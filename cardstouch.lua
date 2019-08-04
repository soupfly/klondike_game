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

function cardDrag()
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
	mousexA = love.mouse.getX()
	mouseyA = love.mouse.getY()
	mousexB = 0
	mouseyB = 0
end

function cardsTouch(card)
	local card = card
	local cardx = card[6]
	local cardy = card[7]
	local width = cardWidth
	local height = cardHeight
	local touch
	local mousex = love.mouse.getX()
	local mousey = love.mouse.getY()
--this checks whether the mouse pointer is touching a card and returns a bool
--this can be called on face cards and back cards with the X and Y field filled in at cardSlots
        if mousex > cardx and mousex < cardx + width and mousey > cardy and mousey < cardy + height then
                touch = true
        else
                touch = false
        end
        return touch
end

function cardsTouchSlot(card)
	--decide if the card is touching a slot
	--1 name
	--2 face
	--3 number
	--4 x pos
	--5 y pos
	local card = card
	local cardx = card[6]
	local cardy = card[7]
	local cardCollision = card[8]
	local width = cardWidth
	local height = cardHeight
	local touch
	local mousex = love.mouse.getX()
	local mousey = love.mouse.getY()
--this checks whether the mouse pointer is touching a card and returns a bool
--this can be called on face cards and back cards with the X and Y field filled in at cardSlots
        if mousex > cardx and mousex < cardx + width and mousey > cardy and mousey < cardy + height then
                touch = true
        else
                touch = false
        end
        return touch
end
