opcodes
sneVx: anInteger Vy: anotherInteger

	"SNE V{1}, V{2}"
	"Skip next instruction if Vx != Vy."

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.
	x bits = y bits
		ifFalse: [ self pc: self pc + self class opcodeLength ]