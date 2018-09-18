tests
testCreatingPlayerWithNameMartin
	| player  |
	player := Player newPlayerWithName: 'Martin'.
	self assert: player name equals: 'Martin'