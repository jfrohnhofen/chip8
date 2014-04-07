opcodes
xorVx: anInteger Vy: anotherInteger

	"XOR V{1}, V{2}"
	"Set Vx = Vx XOR Vy."

	| x y |

	x := self register: anInteger.
	y := self register: anotherInteger.
	x bits: (x bits bitXor: y bits)