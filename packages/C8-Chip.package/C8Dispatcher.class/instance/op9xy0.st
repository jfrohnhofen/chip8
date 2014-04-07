dispatching
op9xy0

	"9xy0 - SNE Vx, Vy"

	((self opcode nibble: 0) = 0)
		ifTrue: [ self cpu sneVx: (self opcode nibble:2) Vy: (self opcode nibble:1) ]
		ifFalse: [ C8InvalidOpcodeException signal ]