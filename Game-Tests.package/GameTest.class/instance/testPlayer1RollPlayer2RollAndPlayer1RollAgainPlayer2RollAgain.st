tests
testPlayer1RollPlayer2RollAndPlayer1RollAgainPlayer2RollAgain
	| board player1 player2 linkedList dice turn |
	board := Board newBoardWithSpaces: 20.
	player1 := Player newPlayerWithName: 'Martin'.
	player2 := Player newPlayerWithName: 'Juan'.
	linkedList := LinkedList new.
	linkedList add: player1.
	linkedList add: player2.
	dice := Dice newDeterministicDiceWithAmountOfFaces: 6.
	turn := Turn newTurnWithPlayer: linkedList.
	player1 roll: {dice} withTurn: turn withAmountOfSpaces: board spaces.
	player2 roll: {dice} withTurn: turn withAmountOfSpaces: board spaces.
	self assert: turn nextPlayerTurn equals: player1 name.
	player1 roll: {dice} withTurn: turn withAmountOfSpaces: board spaces.
	self assert: turn nextPlayerTurn equals: player2 name