actions
fetchOpcode

	| pc highByte lowByte |

	pc := self register: #PC.

	highByte:= self ram readAt: pc bits.
	lowByte := self ram readAt: (pc bits + 1).

	^ C8Instruction new bits: (highByte bitShift: 8) + lowByte