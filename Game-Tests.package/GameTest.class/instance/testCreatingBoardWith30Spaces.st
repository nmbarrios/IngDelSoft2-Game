tests
testCreatingBoardWith30Spaces
	|board|
	board := Board newBoardWithSpaces: 30.
	self assert: board spaces equals: 30.