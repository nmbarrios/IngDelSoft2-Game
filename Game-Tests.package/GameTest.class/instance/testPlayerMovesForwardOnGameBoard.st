tests
testPlayerMovesForwardOnGameBoard
	| player |
	player := Player newPlayerWithName: 'Juan'.
	player moveForward: 3 withAmountOfSpacesOnBoard: 20.
	self assert: player positionOnGameBoard equals: 3