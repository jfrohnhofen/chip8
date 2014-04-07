dispatching
op1nnn

	"1nnn - JP addr"

	self cpu jp: (self opcode bitRange: 12 atIndex: 0)