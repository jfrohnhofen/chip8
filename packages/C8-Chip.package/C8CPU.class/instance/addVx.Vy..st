opcodes
addVx: x Vy: y

	"ADD V{1}, V{2}"
	"Set Vx = Vx + Vy, set VF = carry."

	| result rx ry carry |

	rx := self register: x.
	ry := self register: y.

	result := rx bits + ry bits.
	carry := result > 255
		ifTrue:  [ 1 ]
		ifFalse: [ 0 ].

	(self register: 15) bits: carry.
	rx bits: result