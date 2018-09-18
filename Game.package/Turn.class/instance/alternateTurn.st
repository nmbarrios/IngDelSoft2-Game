as yet unclassified
alternateTurn
	| playerAuxiliar |
	playerAuxiliar := orderOfPlayers first.
	orderOfPlayers removeFirst.
	orderOfPlayers add: playerAuxiliar.
	nextPlayersTurn := orderOfPlayers first name