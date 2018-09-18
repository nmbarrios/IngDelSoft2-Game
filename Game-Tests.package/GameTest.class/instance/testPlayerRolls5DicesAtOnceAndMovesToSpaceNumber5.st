tests
testPlayerRolls5DicesAtOnceAndMovesToSpaceNumber5
|player dice1 dice2 dice3 dice4 dice5 turn board listOfPlayers|
player := Player newPlayerWithName: 'Nico'.
dice1:= Dice newDeterministicDiceWithAmountOfFaces: 5.
dice2:= Dice newDeterministicDiceWithAmountOfFaces: 4.
dice3:= Dice newDeterministicDiceWithAmountOfFaces: 8.
dice4:= Dice newDeterministicDiceWithAmountOfFaces: 2.
dice5:= Dice newDeterministicDiceWithAmountOfFaces: 3.
listOfPlayers := LinkedList new.
listOfPlayers add: player.
turn := Turn newTurnWithPlayer: listOfPlayers .
board := Board newBoardWithSpaces: 20.
player roll: { dice1.dice2.dice3.dice4.dice5 } withTurn: turn withAmountOfSpaces: board spaces.
self assert: player positionOnGameBoard  equals: 5.