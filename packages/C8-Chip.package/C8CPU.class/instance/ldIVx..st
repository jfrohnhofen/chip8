opcodes
ldIVx: anInteger 

	"LD [I], V{1}"
	"Store registers V0 through Vx in memory starting at location I."

	| address |

	address := self register: #I.
	0 to: anInteger do: [ :n |
		self ram write: (self register: n) bits to: (address bits + n) ]