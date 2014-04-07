tests
testldVxI

	| anAddress | 

	anAddress := C8Chip startAddress.
	0 to: 15 do: 
		[ :x | self cpu ram write: x to: anAddress + x ].
	(self cpu register: #I) bits: C8Chip startAddress.
	self cpu ldVxI: 15.
	0 to: 15 do:
		[ :x | self assert: (self cpu register: x) bits equals: x ]
	