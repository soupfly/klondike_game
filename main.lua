--[[
todo list

make a dummy card. when a card is picked up, the card is put in a variable. slot 14.
only dummy cards can move when player picks them up. this should solve the problem where players can move multiple cards.


]]--


















function love.load()
	OS = love.system.getOS()
	DT = nil
	Ydraw = 0
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
		dofile("storage/emulated/0/LOVEGAME/quads.lua")
		dofile("storage/emulated/0/LOVEGAME/cardslots.lua")
		dofile("storage/emulated/0/LOVEGAME/drawfunctions.lua")
	else
		dofile("card/quads.lua")
		dofile("card/cardslots.lua")
		dofile("card/drawfunctions.lua")
	end
end

function love.update(dt)
	DT = dt
	mouseDown = love.mouse.isDown(1)

	if OS == "Android" then
		dofile("storage/emulated/0/LOVEGAME/cardsdrag.lua")
	else
		dofile("card/cardsdrag.lua")
	end
	timer = timer + dt

end

function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
	end
end

function love.mousepressed(x, y, button, istouch)
end

function love.draw()

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

--[[
	cardSlots[1][6], cardSlots[1][7] = carZip(cardSlots[1][4], cardSlots[1][5], cardSlots[1][6], cardSlots[1][7], DT)
	cardSlots[2][6], cardSlots[2][7] = carZip(cardSlots[2][4], cardSlots[2][5], cardSlots[2][6], cardSlots[2][7], DT)
	cardSlots[3][6], cardSlots[3][7] = carZip(cardSlots[3][4], cardSlots[3][5], cardSlots[3][6], cardSlots[3][7], DT)
	cardSlots[4][6], cardSlots[4][7] = carZip(cardSlots[4][4], cardSlots[4][5], cardSlots[4][6], cardSlots[4][7], DT)
	
	cardSlots[5][6], cardSlots[5][7] = carZip(cardSlots[5][4], cardSlots[5][5], cardSlots[5][6], cardSlots[5][7], DT)
	cardSlots[6][6], cardSlots[6][7] = carZip(cardSlots[6][4], cardSlots[6][5], cardSlots[6][6], cardSlots[6][7], DT)
	
	cardSlots[7][6], cardSlots[7][7] = carZip(cardSlots[7][4], cardSlots[7][5], cardSlots[7][6], cardSlots[7][7], DT)
	cardSlots[8][6], cardSlots[8][7] = carZip(cardSlots[8][4], cardSlots[8][5], cardSlots[8][6], cardSlots[8][7], DT)
	cardSlots[9][6], cardSlots[9][7] = carZip(cardSlots[9][4], cardSlots[9][5], cardSlots[9][6], cardSlots[9][7], DT)
	cardSlots[10][6], cardSlots[10][7] = carZip(cardSlots[10][4], cardSlots[10][5], cardSlots[10][6], cardSlots[10][7], DT)
	cardSlots[11][6], cardSlots[11][7] = carZip(cardSlots[11][4], cardSlots[11][5], cardSlots[11][6], cardSlots[11][7], DT)
	cardSlots[12][6], cardSlots[12][7] = carZip(cardSlots[12][4], cardSlots[12][5], cardSlots[12][6], cardSlots[12][7], DT)
--]]
--checks if cards are touching mouse
	for i = 1, 12, 1 do
		drawCard(cardSlots[i][2], cardSlots[i][3], cardSlots[i][1], cardSlots[i][6], cardSlots[i][7], true) --Ace1
	end

	for i = 1, 12, 1 do
		cardSlots[i][9] = cardsTouch(cardSlots[i])
	end

--if cards are dropped, they zip back to the slot
--draw the cards


	--[[
	drawCard(cardSlots[2][2], cardSlots[2][3], cardSlots[2][1], cardSlots[2][6], cardSlots[2][7], true) --Ace2
	drawCard(cardSlots[3][2], cardSlots[3][3], cardSlots[3][1], cardSlots[3][6], cardSlots[3][7], true) --Ace3
	drawCard(cardSlots[4][2], cardSlots[4][3], cardSlots[4][1], cardSlots[4][6], cardSlots[4][7], true) --Ace4

	drawCard(cardSlots[5][2], cardSlots[5][3], cardSlots[5][1], cardSlots[5][6], cardSlots[5][7], true) -- row1
	drawCard(cardSlots[6][2], cardSlots[6][3], cardSlots[6][1], cardSlots[6][6], cardSlots[6][7], true) -- row1

	drawCard(cardSlots[7][2], cardSlots[7][3], cardSlots[7][1], cardSlots[7][6], cardSlots[7][7], true) -- row1
	drawCard(cardSlots[8][2], cardSlots[8][3], cardSlots[8][1], cardSlots[8][6], cardSlots[8][7], true) -- row1
	drawCard(cardSlots[9][2], cardSlots[9][3], cardSlots[9][1], cardSlots[9][6], cardSlots[9][7], true) -- row1
	drawCard(cardSlots[10][2], cardSlots[10][3], cardSlots[10][1], cardSlots[10][6], cardSlots[10][7], true) -- row1
	drawCard(cardSlots[11][2], cardSlots[11][3], cardSlots[11][1], cardSlots[11][6], cardSlots[11][7], true) -- row1
	drawCard(cardSlots[12][2], cardSlots[12][3], cardSlots[12][1], cardSlots[12][6], cardSlots[12][7], true) -- row1
	--]]
end
