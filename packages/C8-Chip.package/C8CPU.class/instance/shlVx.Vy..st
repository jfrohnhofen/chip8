opcodes
shlVx: anInteger Vy: anotherInteger

	"SHL V{1}, V{2}"
	"Set Vx = Vx SHL 1."

	| x msb vf |

	x := self register: anInteger.
	vf := self register: 15.

	msb := (x bits bitAnd: 16r80) >> 7.
	vf bits: msb.
	x bits: x bits << 1