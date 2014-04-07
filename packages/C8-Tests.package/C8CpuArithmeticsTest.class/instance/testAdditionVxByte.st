tests
testAdditionVxByte

	self register0 bits: 13.
	self registerF bits: 30.
	self cpu addVx: 0 byte: 75.
	self assert: self register0 bits equals: 88.
	self assert: self registerF bits equals: 30.
	
	self cpu addVx: 0 byte: 200.
	self assert: self register0 bits equals: 32.
	self assert: self registerF bits equals: 30.