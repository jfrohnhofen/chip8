dispatching
dispatch: anOpcode

	| nibble |

	self opcode: anOpcode.
	nibble := self opcode nibble: 3.
	(self rootTable at: nibble + 1) value