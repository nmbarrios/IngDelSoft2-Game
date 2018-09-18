tests
testCreatingRandomDiceWithAmountOfFacesMinus3Fails
	|dice|
	self should: [dice := Dice newRandomDiceWithAmountOfFaces: -3] raise: AssertionFailure withExceptionDo: [ :exception | self assert: exception messageText equals: 'you cant create a dice with less than 1 face' ]
	
