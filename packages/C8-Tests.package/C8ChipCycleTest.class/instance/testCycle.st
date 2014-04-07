tests
testCycle

	| start |

	start := C8Chip startAddress.
	self chip reset.
	self assert: self pc bits equals: start.

	self chip cpu doCycle.
	self assert: self pc bits equals: start + C8CPU opcodeLength.
	self assert: self r4 bits equals: 16r24.

	self chip cpu doCycle.
	self assert: self pc bits equals:  start + (2 * C8CPU opcodeLength).
	self assert: self r4 bits equals: 16r48
