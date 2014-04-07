opcodes
ldVx: x byte: aByte

	"LD V{1}, 0x{2}"
	"Set Vx = aByte."

	self register: x bits: aByte.