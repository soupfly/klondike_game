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

