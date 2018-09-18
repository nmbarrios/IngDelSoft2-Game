tests
testRollDeterministicDiceWithAmountOfFaces3AndRollOutcomeIsLessThan3
	| dice |
	dice := Dice newDeterministicDiceWithAmountOfFaces: 3.
	self assert: dice roll <= 3