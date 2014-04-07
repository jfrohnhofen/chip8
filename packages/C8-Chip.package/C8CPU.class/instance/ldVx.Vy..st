opcodes
ldVx: anInteger Vy: anotherInteger

	"LD V{1}, V{2}"
	"Set Vx = Vy."

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.
	x bits: (y bits)