dispatching
op6xkk

	"load kk to register x"

	self cpu ldVx: (self opcode nibble: 2) byte: (self opcode byte: 0).