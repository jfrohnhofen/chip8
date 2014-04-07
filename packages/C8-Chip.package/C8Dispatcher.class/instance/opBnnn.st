dispatching
opBnnn

	"Bnnn - JP V0, addr"	

	self cpu jpV0: (self opcode bitRange: 12 atIndex: 0)