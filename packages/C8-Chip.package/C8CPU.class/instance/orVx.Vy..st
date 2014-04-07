opcodes
orVx: anInteger Vy: anotherInteger

	"OR V{1}, V{2}"
	"Set Vx = Vx OR Vy."

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.
	x bits: (x bits bitOr: y bits)