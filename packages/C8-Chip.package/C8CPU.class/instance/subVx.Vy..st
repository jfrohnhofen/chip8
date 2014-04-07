opcodes
subVx: anInteger Vy: anotherInteger

	"SUB V{1}, V{2}"
	"Set Vx = Vx - Vy, set VF = NOT borrow."

	| x y vf |

	x := self register: anInteger.
	y := self register: anotherInteger.
	vf := self register: 15.

	vf bits: (x bits > y bits
		ifTrue: [ 1 ]
		ifFalse: [ 0 ]).
	x bits: (x bits - y bits)