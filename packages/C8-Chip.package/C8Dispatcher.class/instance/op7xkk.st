dispatching
op7xkk

	"7xkk - ADD Vx, byte"

	self cpu addVx: (self opcode nibble: 2) byte: (self opcode byte: 0).