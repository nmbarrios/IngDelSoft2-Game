Instance Creation
forRandomDiceWithAmountOfFaces: anInteger 
   (anInteger>0)
   ifTrue: [^self new initializeWithAmountOfFaces: anInteger]
	ifFalse: [ AssertionFailure  signal: 'you cant create a dice with less than 1' ]
	