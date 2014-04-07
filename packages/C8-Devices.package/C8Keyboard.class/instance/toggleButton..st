actions
toggleButton: anInteger

	| mask |
	
	mask := 2 raisedTo: anInteger.

	((self keyStates bitAnd: mask) = 0)
		ifTrue: [ self keyDown: anInteger ]
		ifFalse: [ self keyUp: anInteger ]