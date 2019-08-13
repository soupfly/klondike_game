cardSlots = {
	[1] = {
		[1] = "Ace1", --slot name
--		[2] slot face
--		[3] slot number
		[4] = 32.31 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 32.31 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		--collision for dropping a card in the slot
		[8] = (cardWidth/2) + 32.31 * scale,
		[9] = false, --if card is touched
		[10] = true --flip bool for drawcard
	},
	[2] = {
		[1] = "Ace2",
		[4] = 301.98 * scale,
		[5] = 58.69 * scale,
		[6] = 301.98 * scale,
		[7] = 58.69 * scale,
		[8] = (cardWidth/2) + 301.98 * scale,
		[9] = false,
		[10] = true
	},
	[3] = {
		[1] = "Ace3",
		[4] = 571.65 * scale,
		[5] = 58.69 * scale,
		[6] = 571.65 * scale,
		[7] = 58.69 * scale,
		[8] = (cardWidth/2) + 571.65 * scale,
		[9] = false,
		[10] = true
	},
	[4] = {
		[1] = "Ace4",
		[4] = 841.32 * scale,
		[5] = 58.69 * scale,
		[6] = 841.32 * scale,
		[7] = 58.69 * scale,
		[8] = (cardWidth/2) + 841.32 * scale,
		[9] = false,
		[10] = true
	},
	[5] = {
		[1] = "row1",
		[4] = 32.31 * scale,
		[5] = 421.83 * scale,
		[6] = 32.31 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 32.31 * scale,
		[9] = false,
		[10] = true
	},
	[6] = {
		[1] = "row2",
		[4] = 301.98 * scale,
		[5] = 421.83 * scale,
		[6] = 301.98 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 301.98 * scale,
		[9] = false,
		[10] = true
	},
	[7] = {
		[1] = "row3",
		[4] = 571.65 * scale,
		[5] = 421.83 * scale,
		[6] = 571.65 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 571.65 * scale,
		[9] = false,
		[10] = true
	},
	[8] = {
		[1] = "row4",
		[4] = 841.32 * scale,
		[5] = 421.83 * scale,
		[6] = 841.32 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 841.32 * scale,
		[9] = false,
		[10] = true
	},
	[9] = {
		[1] = "row5",
		[4] = 1110.99 * scale,
		[5] = 421.83 * scale,
		[6] = 1110.99 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 1110.99 * scale,
		[9] = false,
		[10] = true
	},
	[10] = {
		[1] = "row6",
		[4] = 1380.66 * scale,
		[5] = 421.83 * scale,
		[6] = 1380.66 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 1380.669 * scale,
		[9] = false,
		[10] = true
	},
	[11] = {
		[1] = "row7",
		[4] = 1650.33 * scale,
		[5] = 421.83 * scale,
		[6] = 1650.33 * scale,
		[7] = 421.83 * scale,
		[8] = (cardWidth/2) + 1650.33 * scale,
		[9] = false,
		[10] = true
	},
	[12] = {
		[1] = "waste", 
		[4] = 1245.83 * scale,
		[5] = 58.69 * scale,
		[6] = 1245.83 * scale,
		[7] = 58.69 * scale,
		[8] = (cardWidth/2) + 1245.83 * scale,
		[9] = false,
		[10] = true
	},
	[13] = {
		[1] = "deck", --slot name
		[4] = 1650.33 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[9] = false, --if card is touched
	}
}
