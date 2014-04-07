opcodes
ldB: anInteger

	"LD B, V{1}"
	"Store BCD representation of Vx in memory locations I, I+1, and I+2."

	| value address bytes |

	address := (self register: #I) bits.
	
	value := (self register: anInteger) bits.
	bytes := (OrderedCollection new
		add: value \\ 10;
		add: ((value // 10) \\ 10);
		add: ((value // 100) \\ 10);
		reverse) asByteArray.

	self ram writeMany: bytes to: address