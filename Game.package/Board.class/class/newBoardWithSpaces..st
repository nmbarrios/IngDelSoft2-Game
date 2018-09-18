Instance Creation
newBoardWithSpaces: anAmountOfSpaces
	(anAmountOfSpaces >0)
	ifTrue: [ ^ self new initializeWithSpaces: anAmountOfSpaces ]
	ifFalse: [ AssertionFailure signal: 'you can''t create a board with less than 1 space' ]