opcodes
ldVxI: anInteger

	"LD V{1}, [I]"
	"Read registers V0 through Vx from memory starting at location I."

	| address |

	address := (self register: #I) bits.
	0 to: anInteger do: [ :n |
		(self register: n) bits: (self ram readAt: address + n) ]