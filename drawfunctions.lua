
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
	end
	local cardrow
	cardrow = cardSlots[row]
	if cardrow then
		rowX = cardrow.x
		rowY = cardrow.y
	end
	if flip == true then
		if offsetX then
			love.graphics.draw(images.tiles, cardQuad.frontCard, offsetX, offsetY, 0, scale, scale)
			--face number
			love.graphics.draw(images.tiles, smallface, faceDraw.small.x + offsetX, faceDraw.small.y + offsetY, 0, scale, scale)
			--bigface
			love.graphics.draw(images.tiles, bigface, faceDraw.large.x + offsetX, faceDraw.large.y + offsetY, 0, scale, scale)
		else
			love.graphics.draw(images.tiles, cardQuad.frontCard, rowX, rowY, 0, scale, scale)
			--face number
			love.graphics.draw(images.tiles, smallface, (rowX + faceDraw.small.x), rowY + faceDraw.small.y, 0, scale, scale)
			--bigface
			love.graphics.draw(images.tiles, bigface, rowX + faceDraw.large.x, rowY + faceDraw.large.y, 0, scale, scale)
		end
	else
		love.graphics.draw(images.tiles, cardQuad.backCard, rowX, rowY, 0, scale, scale)
	end
end

function carZip(destx, desty, origx, origy, dt)
	if not mouseDown then
		if origx ~= destx and origy ~= desty then
			local cardxa = destx
			local cardya = desty
			local cardxb = origx
			local cardyb = origy
			cardSpeedx = cardSpeed
			cardSpeedy = cardSpeed
			cardxa = cardxa - cardxb
			cardya = cardya - cardyb
			if cardxa < 0 then
				cardxa = cardxa * -1
			end
			if cardya < 0 then
				cardya = cardya * -1
			end
			if cardxa > cardya then
				cardSpeedy = cardSpeed * (cardya/cardxa)
			else
				cardSpeedx = cardSpeed * (cardxa/cardya)
			end
			if origx < destx then
				origx = (origx + (cardSpeedx * 10 * dt))
			end
			if origx > destx then
				origx = (origx - (cardSpeedx * 10 * dt))
				if origx < (destx + 5) then
					origx = destx
					origy = desty
				end
			end
			if origy < desty then
				origy = (origy + (cardSpeedy * 10 * dt))
			end
			if origy > desty then
				origy = (origy - (cardSpeedy * 10 * dt))
			end

		end
	end
	return origx, origy
end
