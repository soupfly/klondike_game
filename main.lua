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
	Ydraw = 0
	dragging = false
	timer = 0
--	love.window.setMode(800, 600)
	scale = love.graphics.getWidth() / 1920
	cardSpeed = 100 * scale
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
--checks for OS and changes the dofiles
	

	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardstouch.lua")
		dofile("storage/emulated/0/LOVEGAME/quads.lua")
		dofile("storage/emulated/0/LOVEGAME/cardslots.lua")
		dofile("storage/emulated/0/LOVEGAME/drawfunctions.lua")
	else
		dofile("card/cardstouch.lua")
		dofile("card/quads.lua")
		dofile("card/cardslots.lua")
		dofile("card/drawfunctions.lua")
	end
end

function love.update(dt)
	DT = dt
	mouseDown = love.mouse.isDown(1)

	timer = timer + dt

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
	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardsdrag.lua")
	else
		dofile("card/cardsdrag.lua")
	end

	love.graphics.setColor(1, 1, 1)
--draws the green backboard
	love.graphics.draw(images.board, 0, 0, 0, scale, scale)
	love.graphics.draw(images.grain, 0, 0, 0, scale, scale)
--places a backface card in the stack pile
	love.graphics.draw(images.tiles, cardQuad.backCard, cardSlots[13][4], cardSlots[13][5], 0, scale, scale)
--main draw for the cards
--[[

First table
1, 2, 3, 4 --Ace slots
5 -- Pickslot
6 -- Stack
7, 8, 9, 10, 11, 12, 13 -- Row slots

Second Table
1 -- Slot Name
2 -- Card Face
3 -- Card Number
4 -- X position of row
5 -- Y position of row
6 -- X position of card
7 -- Y position of card
8 -- Center position of slot on the X axis
9 -- touch bool
10 -- drag bool
]]--


--checks if cards are touching mouse
	for i = 1, 12, 1 do
		cardSlots[i][6], cardSlots[i][7] = carZip(cardSlots[i][4], cardSlots[i][5], cardSlots[i][6], cardSlots[i][7], DT)	
		drawCard(cardSlots[i][2], cardSlots[i][3], cardSlots[i][1], cardSlots[i][6], cardSlots[i][7], true) --Ace1
	end

--if cards are dropped, they zip back to the slot
--draw the cards


end
