cardSlots = {
	[1] = {
		[1] = "Ace1", --slot name
		[2] = "spade", --slot face
		[3] = "queen", --slot number
		[4] = 32.31 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 32.31 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 32.31 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true --flip bool for drawcard
	},
	[2] = {
		[1] = "Ace2", --slot name
		[2] = "diamond", --slot face
		[3] = "king", --slot number
		[4] = 301.98 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 301.98 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 301.98 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = false
	},
	[3] = {
		[1] = "Ace3", --slot name
		[2] = "clover", --slot face
		[3] = "jack", --slot number
		[4] = 571.65 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 571.65 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 571.65 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[4] = {
		[1] = "Ace4", --slot name
		[2] = "heart", --slot face
		[3] = "three", --slot number
		[4] = 841.32 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 841.32 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 841.32 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[5] = {
		[1] = "row1", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 32.31 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 32.31 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 32.31 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[6] = {
		[1] = "row2", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 301.98 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 301.98 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 301.98 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[7] = {
		[1] = "row3", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 571.65 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 571.65 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 571.65 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[8] = {
		[1] = "row4", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 841.32 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 841.32 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 841.32 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[9] = {
		[1] = "row5", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 1110.99 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 1110.99 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 1110.99 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[10] = {
		[1] = "row6", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 1380.66 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 1380.66 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 1380.669 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[11] = {
		[1] = "row7", --slot name
		[2] = "heart", --slot face
		[3] = "ace", --slot number
		[4] = 1650.33 * scale, --X position
		[5] = 421.83 * scale, --Y position
		[6] = 1650.33 * scale, --X position of dragging card
		[7] = 421.83 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 1650.33 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true

	},
	[12] = {
		[1] = "pickSlot", --slot name
		[2] = "clover", --slot face
		[3] = "king", --slot number
		[4] = 1245.83 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[6] = 1245.83 * scale, --X position of dragging card
		[7] = 58.69 * scale, --Y postiion of dragging card
		[8] = (cardWidth/2) + 1245.83 * scale, --center axis used for detecting drag and drop collision
		[9] = false, --if card is touched
		[10] = true
	},
	[13] = {
		[1] = "stack", --slot name
		[4] = 1650.33 * scale, --X position
		[5] = 58.69 * scale, --Y position
		[9] = false, --if card is touched
	}
}
