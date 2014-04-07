opcodes
sneVx: anInteger byte: aByte

	"SNE V{1}, 0x{2}"
	"Skip next instruction if Vx != kk."

	| x |

	x := self register: anInteger.
	x bits = aByte
		ifFalse: [ self pc: self pc + self class opcodeLength ]