opcodes
ldST: anInteger

	"LD ST, V{1}"
	"Set sound timer = Vx."

	self ldVx: #ST Vy: anInteger.
	self sound ifNotNil: [ self sound play ]