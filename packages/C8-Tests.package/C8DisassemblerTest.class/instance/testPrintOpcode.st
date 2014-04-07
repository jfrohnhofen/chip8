tests
testPrintOpcode

	self disassembler opcode: (C8Instruction new bits: 16rCAFE).

	self disassembler cls.
	self disassembler ret.
	self disassembler ldVx: 4 Vy: 5.

	self assert: self disassembler source equals: 'CLS; [0xCA 0xFE] Clear the display.
RET; [0xCA 0xFE] Return from a subroutine.
LD V4, V5; [0xCA 0xFE] Set Vx = Vy.
'
