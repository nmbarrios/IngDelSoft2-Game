tests
testRollRandomDiceOutcomesLessEqualsThanNumberOfFaces
	| dice |
	dice := Dice newRandomDiceWithAmountOfFaces: 6.
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6).
	self assert: (dice roll between: 1 and: 6)