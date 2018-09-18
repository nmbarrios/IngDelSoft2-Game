tests
testAPlayerRollTwoTimesTheDiceInARowAndTheSecondOneFails
	| player1 player2 dice turn linkedList board |
	player1 := Player newPlayerWithName: 'Martin'.
	player2 := Player newPlayerWithName: 'Kevin'.
	board := Board newBoardWithSpaces: 20.
	linkedList := LinkedList new.
	linkedList
		add: player1;
		add: player2.
	turn := Turn newTurnWithPlayer: linkedList.
	dice := Dice newDeterministicDiceWithAmountOfFaces: 4.
	player1 roll: {dice} withTurn: turn withAmountOfSpaces: board spaces.
	self assert: player1 positionOnGameBoard equals: 1.
	self
		should: [ player1 roll: {dice} withTurn: turn withAmountOfSpaces: board spaces ]
		raise: AssertionFailure
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'It is not your turn' ]