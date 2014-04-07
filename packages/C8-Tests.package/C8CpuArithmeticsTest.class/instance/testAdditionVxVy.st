tests
testAdditionVxVy
	
	self register0 bits: 7.
	self register1 bits: 8.
	self registerF bits: 1.
	self cpu addVx: 0 Vy: 1.
	self assert: self register0 bits equals: 15.
	self assert: self register1 bits equals: 8.
	self assert: self registerF bits equals: 0.
	
	self register0 bits: 188.
	self register1 bits: 157.
	self cpu addVx: 1 Vy: 0.
	self assert: self register0 bits equals: 188.
	self assert: self register1 bits equals: 89.
	self assert: self registerF bits equals: 1
