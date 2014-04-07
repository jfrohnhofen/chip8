actions
doCycle

	| opcode |

	opcode := self fetchOpcode.

	self pc: (self pc + self class opcodeLength).
	self execute: opcode