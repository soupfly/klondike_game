faceDraw = {--face offsets
	small = {
		x = 10 * scale, 
		y = 10 * scale
	}, 
	large = {
		x = 97.359 * scale, 
		y = 190.830 * scale
	}
}

cardQuad = {
	frontCard = love.graphics.newQuad(
		280, 281, 240, 331, 
		images.tiles:getDimensions()
	), 
	backCard = love.graphics.newQuad(
		560, 281, 240, 331, 
		images.tiles:getDimensions()
	), 
	heart = {
		bigFace = love.graphics.newQuad(
		0, 281, 140, 140, 
		images.tiles:getDimensions()
		),
		ace = face(0, 0),
		two = face(1, 0),
		three = face(2, 0),
		four = face(3, 0),
		five = face(4, 0),
		six = face(5, 0),
		seven = face(6, 0),
		eight = face(7, 0),
		nine = face(8, 0),
		ten = face(9, 0),
		jack = face(10, 0),
		queen = face(11, 0),
		king = face(12, 0)
	}, 
	diamond = {
		bigFace = love.graphics.newQuad(
		0, 420, 140, 140, 
		images.tiles:getDimensions()
		),		
		ace = face(0, 1),
		two = face(1, 1),
		three = face(2, 1),
		four = face(3, 1),
		five = face(4, 1),
		six = face(5, 1),
		seven = face(6, 1),
		eight = face(7, 1),
		nine = face(8, 1),
		ten = face(9, 1),
		jack = face(10, 1),
		queen = face(11, 1),
		king = face(12, 1)
	},
	spade = {
		bigFace = love.graphics.newQuad(
		140, 281, 140, 140, 
		images.tiles:getDimensions()
		),	
		ace = face(0, 2),
		two = face(1, 2),
		three = face(2, 2),
		four = face(3, 2),
		five = face(4, 2),
		six = face(5, 2),
		seven = face(6, 2),
		eight = face(7, 2),
		nine = face(8, 2),
		ten = face(9, 2),
		jack = face(10, 2),
		queen = face(11, 2),
		king = face(12, 2)
	}, 
	clover = {
		bigFace = love.graphics.newQuad(
		140, 420, 139.5, 139.5, 
		images.tiles:getDimensions()
		),
		ace = face(0, 3),
		two = face(1, 3),
		three = face(2, 3),
		four = face(3, 3),
		five = face(4, 3),
		six = face(5, 3),
		seven = face(6, 3),
		eight = face(7, 3),
		nine = face(8, 3),
		ten = face(9, 3),
		jack = face(10, 3),
		queen = face(11, 3),
		king = face(12, 3)
	}
}
