--[[
todo list

make a dummy card. when a card is picked up, the card is put in a variable. slot 14.
only dummy cards can move when player picks them up. this should solve the problem where players can move multiple cards.
]]--

function love.load()
	mousePressed = nil
	mouseReleased = nil
	OS = love.system.getOS()
	OSstring = nil
	DT = nil
	dragging = false
--	love.window.setMode(640, 480)
	--scale allows for scaling any window size. 
	--it is loaded once and is not dynamic. 
	--I may change this later so the window can be adjusted by the user and all the graphics don't look bad.
	scale = love.graphics.getWidth() / 1920
	--cardSpeed is the speed at which the cards zoom around using the cardZip function
	cardSpeed = 600 * scale
	cardWidth = 237.359 * scale
	cardHeight = 330.830 * scale
	--if the cards are stacked on top of each other they need an adjustment to the Y
	stackFront = 80 * scale --forward face cards have a higher number so you can see what the cards are
	stackBack = 20 * scale --back face cards have a smaller number
	images = { 
		board = love.graphics.newImage("background.png"), 
		tiles = love.graphics.newImage("tileset.png"),
		tilesQuad = {}
	}
--loads the functions

	if OS == "Android" then
		OSstring = "storage/emulated/0/LOVEGAME/"
	else
		OSstring = "card/"
	end
-- comment out the top if statement when making a love file and uncomment the bottom
--	OSstring = ""

	dofile(OSstring .. "facedraw.lua")
	dofile(OSstring .. "quads.lua")
	dofile(OSstring .. "cardslots.lua")
	dofile(OSstring .. "drawcard.lua")
	dofile(OSstring .. "cardstouch.lua")
	dofile(OSstring .. "cardlistadd.lua")
	dofile(OSstring .. "shuffledeck.lua")
	dofile(OSstring .. "cardlist.lua")
	dofile(OSstring .. "cardzip.lua")
	dofile(OSstring .. "addcard.lua")
	dofile(OSstring .. "removecard.lua")

	cardlistAdd()
	cardList[3] = shuffle(cardList[3])

	for i = 1, 13, 1 do
		cardSlots[i][2], cardSlots[i][3] = cardList[3][i][1], cardList[3][i][2]
	end

end

--I needed a global DT for my draw functions
--I'll change it later
function love.update(dt)
	DT = dt
	mouseDown = love.mouse.isDown(1)
	cardDrag()
	print(cardDrag())
end

function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
	end
end

function love.mousepressed(x, y, button, istouch)
	if button == 1 then
		mouseReleased = false
		mousePressed = true
	end
end

function love.mousereleased(x, y, button)
	if button == 1 then
		mousePressed = false
		mouseReleased = true
	end
end

function love.draw()
--adds cards to the deck
--draws the playing board
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(images.board, 0, 0, 0, scale, scale)
	love.graphics.draw(images.tiles, cardQuad.backCard, cardSlots[13][4], cardSlots[13][5], 0, scale, scale)
--checks if cards are touching mouse
	for i = 1, 12, 1 do
		--cards will zip if they are away from their original spots
		cardSlots[i][6], cardSlots[i][7] = carZip(cardSlots[i][4], cardSlots[i][5], cardSlots[i][6], cardSlots[i][7], DT)
		--draws all the cards in the cardSlots table
		--I have more plans to make cardSlots the container for all the cards being picked up and dropped around
		--the board
		if cardSlots[i][2] then
			drawCard(cardSlots[i][2], cardSlots[i][3], cardSlots[i][1], cardSlots[i][6], cardSlots[i][7], cardSlots[i][10])
		end
	end
end
