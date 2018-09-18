tests
testPlayerDontCrossTheLastSpaces
	| player |
	player := Player newPlayerWithName: 'Pablo'.
	player moveForward: 30 withAmountOfSpacesOnBoard: 20.
	self assert: (player crossLastSpaceWithAmountOfSpacesOnBoard: 20).
	self assert: player positionOnGameBoard equals: 20