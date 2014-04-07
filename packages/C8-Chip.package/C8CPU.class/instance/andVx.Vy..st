opcodes
andVx: anInteger Vy: anotherInteger

	"AND V{1}, V{2}"
	"Set Vx = Vx AND Vy"

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.
	x bits: (x bits bitAnd: y bits)