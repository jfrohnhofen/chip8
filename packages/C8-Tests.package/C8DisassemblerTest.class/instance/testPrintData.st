tests
testPrintData

	self disassembler disassemble: #[ 16rE4 16r23 ].

	self assert: self disassembler source equals: '0xE4 0x23
'
