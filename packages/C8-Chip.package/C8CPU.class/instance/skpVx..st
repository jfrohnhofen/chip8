opcodes
skpVx: anInteger

	"SKP V{1}"
	"Skip next instruction if key with the value of Vx is pressed."

	| key |

	key := (self register: anInteger) bits.
	(self keyboard isKeyDown: key)
		ifTrue: [ self pc: (self pc + self class opcodeLength) ]