tests
testNibble
	| opcode |
	opcode := C8Instruction new bits: 16r1234.
	self assert: (opcode nibble: 0) equals: 4.
	self assert: (opcode nibble: 1) equals: 3.
	self assert: (opcode nibble: 2) equals: 2.
	self assert: (opcode nibble: 3) equals: 1