actions
keyUp: anInteger

	| mask |

	mask := (2 raisedTo: anInteger) bitInvert.

	self keyStates: (self keyStates bitAnd: mask).
	(self button: anInteger) color: Color white darker