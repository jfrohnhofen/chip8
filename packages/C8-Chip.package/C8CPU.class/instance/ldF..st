opcodes
ldF: anInteger

	"LD F, V{1}"
	"Set I = location of sprite for digit Vx."

	(self register: #I) bits: anInteger * C8Graphics bytesPerSprite + 1	