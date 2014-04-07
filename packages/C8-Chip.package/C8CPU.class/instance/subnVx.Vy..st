opcodes
subnVx: anInteger  Vy: anotherInteger

	"SUBN V{1}, V{2}"
	"Set Vx = Vy - Vx, set VF = NOT borrow."

	| x y vf |

	x := self register: anInteger.
	y := self register: anotherInteger.
	vf := self register: 15.

	vf bits: (y bits > x bits
		ifTrue: [ 1 ]
		ifFalse: [ 0 ]).
	x bits: (y bits - x bits)