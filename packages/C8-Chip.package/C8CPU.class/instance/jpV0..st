opcodes
jpV0: addr

	"JP V0, 0x{1}"
	"Jump to location nnn + V0."

	| v0 |

	v0 := self register: 0.
	self pc: (v0 bits * self class opcodeLength  + addr)