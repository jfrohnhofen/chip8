dispatching
op2nnn

	"2nnn - CALL addr"

	self cpu call: (self opcode bitRange: 12 atIndex: 0)