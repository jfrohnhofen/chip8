opcodes
call: addr

	"CALL 0x{1}"
	"Call a subroutine. SP+1, PC on stack, set PC to addr"

	| sp |

	sp := self register: #SP.
	self stack at: sp bits put: self pc.
	sp bits: (sp bits + 1).
	self pc: addr