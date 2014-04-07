tests
testSingleRegister

	| register |

	register := C8Register new.
	register bits: 19.
	self assert: register bits equals: 19.
	register bits: 531.
	self assert: register bits equals: 19.
	self assert: register mask equals: (2 raisedTo: 8) - 1.
	
	register := C8Register withBitWidth: 16.
	register bits: 19.
	self assert: register bits equals: 19.
	register bits: 531.
	self assert: register bits equals: 531.
	self assert: register mask equals: (2 raisedTo: 16) - 1
