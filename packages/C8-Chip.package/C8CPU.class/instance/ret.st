opcodes
ret

	"RET"
	"Return from a subroutine."

	| sp |

	sp := self register: #SP.
	sp bits: sp bits - 1.
	self pc: (self stack at: sp bits)