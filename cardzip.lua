function carZip(destx, desty, origx, origy, dt)

	--first trigger should be changed
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
			--offset check
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
