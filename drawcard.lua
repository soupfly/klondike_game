function drawCard(face, number, row, offsetX, offsetY, flip)
	--local offsetX = 0
	--local offsetY = 0
	local smallface
	local bigface
	local rowX
	local rowY
	local draw1
	local draw2
	local draw3
	local cardrow = cardSlots[row]
	--if a row exists then rowX and rowY is set to the cards X and Y
	if cardrow then
		rowX = cardrow.x
		rowY = cardrow.y
	end
	--flip is a front facing card with a face
	if flip == true then
		if face == "heart" then
			bigface = cardQuad.heart.bigFace
			smallface = cardQuad.heart[number]
		elseif face == "diamond" then
			bigface = cardQuad.diamond.bigFace
			smallface = cardQuad.diamond[number]
		elseif face == "spade" then
			bigface = cardQuad.spade.bigFace
			smallface = cardQuad.spade[number]
		elseif face == "clover" then
			bigface = cardQuad.clover.bigFace
			smallface = cardQuad.clover[number]
		end
		--if a card is moved
		if offsetX then
			love.graphics.draw(images.tiles, cardQuad.frontCard, offsetX, offsetY, 0, scale, scale)
			love.graphics.draw(images.tiles, smallface, (faceDraw.small.x + offsetX), (faceDraw.small.y + offsetY), 0, scale, scale)
			love.graphics.draw(images.tiles, bigface, (faceDraw.large.x + offsetX), (faceDraw.large.y + offsetY), 0, scale, scale)
		--if a card is not moved
		else
			love.graphics.draw(images.tiles, cardQuad.frontCard, rowX, rowY, 0, scale, scale)
			love.graphics.draw(images.tiles, smallface, (rowX + faceDraw.small.x), (rowY + faceDraw.small.y), 0, scale, scale)
			love.graphics.draw(images.tiles, bigface, (rowX + faceDraw.large.x), (rowY + faceDraw.large.y), 0, scale, scale)
		end
	--backface card
	elseif flip == false then
		love.graphics.draw(images.tiles, cardQuad.backCard, offsetX, offsetY, 0, scale, scale)
	end
end
