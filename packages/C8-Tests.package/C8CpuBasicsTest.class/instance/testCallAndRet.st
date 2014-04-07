tests
testCallAndRet

	| anAddress sp oldStackPointer oldPC |

	anAddress := C8Chip startAddress + 16.
	sp := self cpu register: #SP.
	oldStackPointer := sp bits.
	oldPC := self cpu pc.
	
	self cpu call: anAddress.
	self assert: sp bits equals: oldStackPointer + 1.
	self assert: self cpu stack first equals: oldPC.
	self assert: self cpu pc equals: anAddress.

	self cpu ret.
	self assert: sp bits equals: oldStackPointer.
	self assert: (self cpu register: #SP) bits equals: 1.
	self assert: self cpu pc equals: C8Chip startAddress