function cardsTouch(card)
	local card = card
	local cardx = card[6]
	local cardy = card[7]
	local width = cardWidth
	local height = cardHeight
	local touch
	local mousex = love.mouse.getX()
	local mousey = love.mouse.getY()

        if mousex > cardx and mousex < cardx + width and mousey > cardy and mousey < cardy + height then
                touch = true
        else
                touch = false
        end
        return touch
end

