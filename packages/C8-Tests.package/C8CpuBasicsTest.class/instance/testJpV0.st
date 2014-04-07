tests
testJpV0

	| anAddress anOffset |

	anAddress := C8Chip startAddress.
	anOffset := 20.
	(self cpu register: 0) bits: anOffset.
	self cpu jpV0: anAddress.
	self assert: self cpu pc equals: anAddress + (C8CPU opcodeLength * anOffset)
	