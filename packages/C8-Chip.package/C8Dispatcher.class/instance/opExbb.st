dispatching
opExbb

	Dictionary new
		at: 16r9E put: [ self cpu skpVx: (self opcode nibble: 2) ];
		at: 16rA1 put: [ self cpu sknpVx: (self opcode nibble: 2) ];

		at: (self opcode byte: 0)
			ifPresent: [ :block | block value ]
			ifAbsent: [ C8InvalidOpcodeException signal ]