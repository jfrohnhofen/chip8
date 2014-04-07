tests
testBitRange
	| opcode |
	opcode := C8Instruction new bits: 16r1234.
	self assert: (opcode bitRange: 16 atIndex: 0) equals: 16r1234.
	self assert: (opcode bitRange: 12 atIndex: 0) equals: 16r234