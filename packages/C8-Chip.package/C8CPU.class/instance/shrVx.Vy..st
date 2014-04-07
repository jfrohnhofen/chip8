opcodes
shrVx: anInteger Vy: anotherInteger

	"SHR V{1}, V{2}"
	"Set Vx = Vx SHR 1."

	| x lsb vf |

	x := self register: anInteger.
	vf := self register: 15.

	lsb := x bits bitAnd: 16r01.
	vf bits: lsb.
	x bits: x bits >> 1