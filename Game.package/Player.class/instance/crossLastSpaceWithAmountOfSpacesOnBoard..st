finish
crossLastSpaceWithAmountOfSpacesOnBoard: anAmountOfSpacesOnBoard
	numberOfSpace >= anAmountOfSpacesOnBoard 
	ifTrue: [ ^ true ]
	ifFalse: [ ^ false ]