# klondike_game
A solitare game using the Love2d framework

I always wanted to make a solitare game from scratch and this is the project. All the graphics were made by me using open source software such as Inkscape and Gimp.

Recent additions

	* New function to iterate all 52 cards in a table
	* New function that shuffles the cards in the table
		-- shuffle can be called when a new game is made
	* Changes to the way cards move
		-- Added table manipulation for adding and removing cards
			needs testing
		-- Cards can be selected and dragged
		-- Cards can zoom from point A to point B in a smooth manner

TODO ... Lots to do ...
	
	* Limit zip function to new game
		-- when a new game is made, the cards will zip from the deck, to the tableau piles
		-- make a check on cards in the tableau
			-- if cards can be moved to the Ace slots, then zip them to the correct slots
	* Drag and drop cards
		-- limit dragging and dropping
			-- from waste, tableau piles, ace slots to tableau piles
		-- append cards dropped into slots and abide by game rules
		-- pickup from top cards
		-- pickup from parent cards and carry multiple cards
			-- change collion cards that peek behind other cards so the players can pick back cards up
		-- pick from middle stack and drag piles, making a new parent, and carrying stack from one to another
	* Stacks in slots
		-- give a table for the waste and deck slots
		-- give a table for each slot to hold the cards
		-- get the length of each table and display from low to high
		-- enable dragging large groups of stacked cards
	* Flipping though deck
		-- flip through deck and if a card is picked up and moved, shift the table and remove the empty card space
	* Game rules
		-- make rules for Ace slots to stack accending order and like kinds
		-- make rules for Slots to stack opposite color/decending order
