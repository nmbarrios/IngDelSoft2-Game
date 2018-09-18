tests
testCreatingBoardWithMinus30SpacesFails
	|board|
	self should: [board := Board newBoardWithSpaces: -30]raise: AssertionFailure withExceptionDo: [ :exception | self assert: exception messageText equals: 'you can''t create a board with less than 1 space' ].
	