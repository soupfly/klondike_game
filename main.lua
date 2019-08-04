--[[
todo list

make a dummy card. when a card is picked up, the card is put in a variable. slot 14.
only dummy cards can move when player picks them up. this should solve the problem where players can move multiple cards.
]]--

function love.load()
	mousePressed = nil
	mouseReleased = nil
	OS = love.system.getOS()
	DT = nil
	dragging = false
	love.window.setMode(640, 480)
	scale = love.graphics.getWidth() / 1920
	cardSpeed = 600 * scale
	cardWidth = 237.359 * scale
	cardHeight = 330.830 * scale
	stackFront = 80 * scale
	stackBack = 20 * scale
	images = { 
		grain = love.graphics.newImage("grain.png"),
		board = love.graphics.newImage("background.png"), 
		tiles = love.graphics.newImage("tileset.png"),
		tilesQuad = {}
	}
--loads the functions
	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardstouch.lua")
		dofile("storage/emulated/0/LOVEGAME/quads.lua")
		dofile("storage/emulated/0/LOVEGAME/cardslots.lua")
		dofile("storage/emulated/0/LOVEGAME/drawfunctions.lua")
		dofile("storage/emulated/0/LOVEGAME/cardsdrag.lua")
		dofile("storage/emulated/0/LOVEGAME/cardstouch.lua")

	else
		dofile("card/cardstouch.lua")
		dofile("card/quads.lua")
		dofile("card/cardslots.lua")
		dofile("card/drawfunctions.lua")
		dofile("card/cardsdrag.lua")
		dofile("card/cardstouch.lua")

	end
end

--I needed a global DT for my draw functions
--I'll change it later
function love.update(dt)
	DT = dt
	mouseDown = love.mouse.isDown(1)
	cardDrag()
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
--draws the playing board
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(images.board, 0, 0, 0, scale, scale)
--	love.graphics.draw(images.grain, 0, 0, 0, scale, scale)
	love.graphics.draw(images.tiles, cardQuad.backCard, cardSlots[13][4], cardSlots[13][5], 0, scale, scale)
--checks if cards are touching mouse
	for i = 1, 12, 1 do
		--cards will zip if they are away from their original spots
		cardSlots[i][6], cardSlots[i][7] = carZip(cardSlots[i][4], cardSlots[i][5], cardSlots[i][6], cardSlots[i][7], DT)
		--draws all the cards in the cardSlots table
		--I have more plans to make cardSlots the container for all the cards being picked up and dropped around
		--the board
		drawCard(cardSlots[i][2], cardSlots[i][3], cardSlots[i][1], cardSlots[i][6], cardSlots[i][7], cardSlots[i][10])
	end
end
