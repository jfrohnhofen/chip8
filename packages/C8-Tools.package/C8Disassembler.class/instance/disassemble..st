disassembling
disassemble: aByteArray

	| highByte lowByte |

	self source: ''.

	1 to: aByteArray size by: 2 do: [ :i |
		highByte := (aByteArray at: i).
		lowByte := (aByteArray at: i + 1 ifAbsent: 0).
		self opcode: (C8Instruction  new bits: (highByte bitShift: 8) + lowByte).

		[ self dispatcher dispatch: self opcode ]
			on: C8InvalidOpcodeException do: [ self printData ] ].

	^ self source