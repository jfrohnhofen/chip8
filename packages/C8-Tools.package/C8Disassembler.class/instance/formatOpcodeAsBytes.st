printing
formatOpcodeAsBytes

	^ '0x', ((self opcode byte: 1) printStringBase: 16 length: 2 padded: true),
	  ' 0x', ((self opcode byte: 0) printStringBase: 16 length: 2 padded: true)