tests
testChip
	| chip |
	chip := C8Chip new.
	self assert: chip startAddress equals: 16r200