dispatching
opFxbb

	Dictionary new
		at: 16r07 put: [ self cpu ldVxDT: (self opcode nibble: 2) ];
		at: 16r0A put: [ self cpu ldK: (self opcode nibble: 2) ];
		at: 16r15 put: [ self cpu ldDT: (self opcode nibble: 2) ];
		at: 16r18 put: [ self cpu ldST: (self opcode nibble: 2) ];
		at: 16r1E put: [ self cpu addIVx: (self opcode nibble: 2) ];
		at: 16r29 put: [ self cpu ldF: (self opcode nibble: 2) ];
		at: 16r33 put: [ self cpu ldB:  (self opcode nibble: 2) ];
		at: 16r55 put: [ self cpu ldIVx: (self opcode nibble: 2) ];
		at: 16r65 put: [ self cpu ldVxI: (self opcode nibble: 2) ];

		at: (self opcode byte: 0)
			ifPresent: [ :block | block value ]
			ifAbsent: [ C8InvalidOpcodeException signal ]