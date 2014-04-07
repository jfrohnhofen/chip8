dispatching
opAnnn

	"Annn - LD I, addr"

	self cpu ldI: (self opcode bitRange: 12 atIndex: 0)