opcodes
rndVx: anInteger byte: aByte

	"RND V{1}, 0x{2}"
	"Set Vx = random byte AND kk."

	| randomByte |

	randomByte := 256 atRandom - 1.
	self register: anInteger bits: (randomByte bitAnd: aByte)	