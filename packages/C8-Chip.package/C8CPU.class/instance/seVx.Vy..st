opcodes
seVx: anInteger Vy: anotherInteger

	"SE V{1}, V{2}"
	"Skip next instruction if Vx = Vy."

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.

	x bits = y bits
		ifTrue: [ self pc: (self pc + self class opcodeLength) ]