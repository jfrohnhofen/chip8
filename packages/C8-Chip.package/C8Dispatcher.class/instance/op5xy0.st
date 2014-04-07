dispatching
op5xy0

	"5xy0 - SE Vx, Vy"

	((self opcode nibble: 0) = 0)
		ifTrue: [ self cpu seVx: (self opcode nibble:2) Vy: (self opcode nibble:1) ]
		ifFalse: [ C8InvalidOpcodeException signal ]