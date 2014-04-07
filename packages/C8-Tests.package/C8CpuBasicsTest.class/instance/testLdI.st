tests
testLdI 

	| anAddress |

	anAddress := C8Chip startAddress + 20.
	self cpu ldI: anAddress.
	self assert: (self cpu register: #I) bits equals: anAddress