opcodes
seVx: anInteger byte: aByte

	"SE V{1}, 0x{2}"
	"Skip next instruction if Vx = aByte."

	(self register: anInteger) bits = aByte
		ifTrue: [ self pc: (self pc + self class opcodeLength) ]