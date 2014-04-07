tests
testOpcodeToken

	| token |
	
	token := C8OpcodeToken opcode: '' parameters: nil line: '' address: 0.

	self
		assert: (token evaluateKK: '123' using: '') equals: 123;
		assert: (token evaluateN: '4' using: '') equals: 4;
		assert: (token evaluateNNN: 'TEST + 4' using: '| TEST | TEST := 512. ') equals: 516;
		assert: (token evaluateX: 'A') equals: (10 bitShift: 8);
		assert: (token evaluateY: 'B') equals: (11 bitShift: 4);
		assert: (token evaluateOpcode: 'nmzkxy1Ax3') equals: 16r1a03
