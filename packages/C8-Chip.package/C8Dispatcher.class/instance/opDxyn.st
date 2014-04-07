dispatching
opDxyn

	"Dxyn - DRW Vx, Vy, nibble"

	self cpu drwVx: (self opcode nibble: 2) Vy: (self opcode nibble: 1) nibble: (self opcode nibble: 0)