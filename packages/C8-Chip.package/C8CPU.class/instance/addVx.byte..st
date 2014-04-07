opcodes
addVx: x byte: aByte

	"ADD V{1}, 0x{2}"
	"Set Vx = Vx + aByte."

	| register |

	register := self register: x.
	register bits: (register bits + aByte)