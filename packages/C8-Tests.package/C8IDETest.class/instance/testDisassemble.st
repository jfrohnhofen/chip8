tests
testDisassemble

	| expected |
	
	expected := 'CLS; [0x00 0xE0] Clear the display.
'.

	self ide disassemble: #[16r00 16rE0].
	self assert: self ide source equals: expected.
	self assert: self ide editor text equals: expected.
	self assert: self ide console text equals: 'Successfully disassembled.'
