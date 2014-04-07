opcodes
ldDT: anInteger

	"LD DT, V{1}"
	"Set delay timer = Vx."

	self ldVx: #DT Vy: anInteger