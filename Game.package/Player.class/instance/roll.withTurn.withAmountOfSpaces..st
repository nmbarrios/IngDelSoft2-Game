playing
roll: aCollectionOfDices withTurn: aTurn withAmountOfSpaces: anAmountOfSpaces
	| spacesToMove|
	self name = aTurn nextPlayerTurn
		ifTrue: [ aTurn alternateTurn.
			spacesToMove:= 0.
			aCollectionOfDices do:[:x| spacesToMove:= spacesToMove + x roll].
			self moveForward: spacesToMove  withAmountOfSpacesOnBoard: anAmountOfSpaces ]
		ifFalse: [ AssertionFailure signal: 'It is not your turn' ]