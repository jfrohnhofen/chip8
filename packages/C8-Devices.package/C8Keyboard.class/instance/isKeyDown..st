testing
isKeyDown: anInteger

	| mask |

	mask := 2 raisedTo: anInteger.

	^ (self keyStates bitAnd: mask) ~= 0