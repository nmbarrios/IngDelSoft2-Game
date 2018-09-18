tests
testRollDeterministicDiceOutcomes2
	| dice |
	dice := Dice newDeterministicDiceWithAmountOfFaces: 4.
	self assert: dice roll equals: 1.