opcodes
ldVxDT: anInteger

	"LD V{1}, DT"
	"Set Vx = delay timer value."

	self ldVx: anInteger  Vy: #DT