# klondike_game
A solitare game using the Love2d framework

I always wanted to make a solitare game from scratch and this is the project. All the graphics were made by me using open source software such as Inkscape and Gimp.

Recent additions

	* New function to iterate all 52 cards in a table
	* New function that shuffles the cards in the table
		-- shuffle can be called when a new game is made
	* Changes to the way cards move
		-- Cards can be selected and dragged
		-- Cards can zoom from point A to point B in a smooth manner

TODO ... Lots to do ...

	* Drag and drop cards
		-- append cards dropped into slots and abide by game rules
	* Stacks in slots
		-- give a table for each slot to hold the cards
		-- get the length of each table and display from low to high
		-- enable dragging large groups of stacked cards
	* Flipping though stack
		-- flip through stack and if a card is picked up and moved, shift the table and remove the empty card space
	* Game rules
		-- make rules for Ace slots to stack accending order and like kinds
		-- make rules for Slots to stack opposite color/decending order
