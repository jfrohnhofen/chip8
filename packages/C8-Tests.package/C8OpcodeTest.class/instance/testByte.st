tests
testByte
	| opcode |
	opcode := C8Instruction new bits: 16r1234.
	self assert: (opcode byte: 0) equals: 16r34.
	self assert: (opcode byte: 1) equals: 16r12