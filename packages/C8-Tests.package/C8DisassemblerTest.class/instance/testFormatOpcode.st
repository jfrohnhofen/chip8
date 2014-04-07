tests
testFormatOpcode

	self disassembler opcode: (C8Instruction new bits: 16rBEEF).
	
	self assert: self disassembler formatOpcodeAsBytes equals: '0xBE 0xEF'
