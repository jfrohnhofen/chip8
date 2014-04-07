tests
testJp

	| anAddress |
	
	anAddress := C8Chip startAddress + 8.
	self cpu jp: anAddress.
	self assert: self cpu pc equals: anAddress