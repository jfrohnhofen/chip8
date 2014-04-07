tests
testKeyUp

	self sendKeyboardEvent: #keyUp from: $a.
	self sendKeyboardEvent: #keyUp from: $5.
	
	self sendKeyboardEvent: #keyUp from: $a.
	self deny: (self keyboard isKeyDown: 10).
	
	self sendKeyboardEvent: #keyUp from: $5.
	self deny: (self keyboard isKeyDown: 5)