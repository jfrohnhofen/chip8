opcodes
sknpVx: anInteger

	"SKNP V{1}"
	"Skip next instruction if key with the value of Vx is not pressed."

	| key |

	key := (self register: anInteger) bits.
	(self keyboard isKeyDown: key)
		ifFalse: [ self pc: (self pc + 2) ]