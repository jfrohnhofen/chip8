actions
keyDown: anInteger

	| mask |
	
	mask := 2 raisedTo: anInteger.

	self lastKey: anInteger.
	self keyStates: (self keyStates bitOr: mask).
	(self button: anInteger) color: Color gray.
	self  waitSemaphore signal