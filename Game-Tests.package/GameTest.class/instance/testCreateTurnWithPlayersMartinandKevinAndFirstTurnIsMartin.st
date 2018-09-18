tests
testCreateTurnWithPlayersMartinandKevinAndFirstTurnIsMartin
	| player1 player2 turn linkedList |
	player1 := Player newPlayerWithName: 'Martin'.
	player2 := Player newPlayerWithName: 'Kevin'.
	linkedList := LinkedList new.
	linkedList
		add: player1;
		add: player2.
	turn := Turn newTurnWithPlayer: linkedList.
	self assert: turn nextPlayerTurn equals: 'Martin'