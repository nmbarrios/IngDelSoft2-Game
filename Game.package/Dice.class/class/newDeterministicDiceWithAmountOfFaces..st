instance creation
newDeterministicDiceWithAmountOfFaces: anInteger 
   (anInteger>0)
   ifTrue: [^self new initializeWithAmountOfFaces: anInteger diceType: DeterministicDice new]
	ifFalse: [ AssertionFailure  signal: 'you cant create a dice with less than 1 face' ]
	