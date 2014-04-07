actions
disassemble: rom

	self source: (self disassembler disassemble: rom).
	self editor setText: self source.
	self console setText: 'Successfully disassembled.'