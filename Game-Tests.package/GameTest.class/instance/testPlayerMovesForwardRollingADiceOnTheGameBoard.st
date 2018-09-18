tests
testPlayerMovesForwardRollingADiceOnTheGameBoard
	| player dice turn gameBoard linkedList |
	player := Player newPlayerWithName: 'Martin'.
	self assert: player positionOnGameBoard equals: 0.
	dice := Dice newDeterministicDiceWithAmountOfFaces: 6.
	linkedList := LinkedList new.
	linkedList add: player.
	turn := Turn newTurnWithPlayer: linkedList.
	gameBoard := Board newBoardWithSpaces: 20.
	player roll: {dice} withTurn: turn withAmountOfSpaces: gameBoard spaces.	
	self assert: player positionOnGameBoard equals: 1.
	player roll: {dice} withTurn: turn withAmountOfSpaces: gameBoard spaces.
	self assert: player positionOnGameBoard equals: 2