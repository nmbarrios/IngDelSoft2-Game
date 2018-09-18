moving
moveForward: anAmountOfSpaces withAmountOfSpacesOnBoard: anAmountOfSpacesOnBoard
	numberOfSpace + anAmountOfSpaces >= anAmountOfSpacesOnBoard
		ifTrue: [ numberOfSpace := anAmountOfSpacesOnBoard ]
		ifFalse: [ numberOfSpace := numberOfSpace + anAmountOfSpaces ]