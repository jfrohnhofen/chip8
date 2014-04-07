dispatching
op00Eb

	"00E0 - CLS"
	"00EE - RET"

	Dictionary new
		at: 16r0E0 put: [ self cpu cls ];
		at: 16r0EE put: [ self cpu ret ];

		at: (self opcode nibbles: 0 to: 3)
			ifPresent: [ :block | block value ]
			ifAbsent: [ C8InvalidOpcodeException signal ]