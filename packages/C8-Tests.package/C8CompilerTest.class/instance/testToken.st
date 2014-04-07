tests
testToken

	| token result |
	
	token := C8Token new.
	
	result := token evaluateByte: '0x12'.
	self assert: result equals: 18.

	result := token
		evaluate: 'TEST1 + TEST2 - 0x25 + 0b11'
		using: '| TEST1 TEST2 | TEST1 := 33. TEST2 := 44. '
		nibbleCount: 1
		nibbleShift: 2.	
	self assert: result equals: 2816
