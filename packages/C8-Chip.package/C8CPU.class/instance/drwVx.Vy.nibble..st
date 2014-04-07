opcodes
drwVx: anInteger Vy: anotherInteger nibble: aNibble

	"DRW V{1}, V{2}, 0x{3}"
	"Display n-byte sprite starting at memory location I at (Vx, Vy), set VF = collision."

	| x y sprite collision vf |

	x := (self register: anInteger) bits.
	y := (self register: anotherInteger) bits.
	sprite := self ram read: aNibble at: (self register: #I) bits.

	collision := self graphics draw: sprite to: x@y.

	vf := self register: 15.
	vf bits: (collision
		ifTrue: [ 1 ]
		ifFalse: [ 0 ])