tests
testSingleByte
	self memory write: 2r0110 to: 16rA50.
	self assert: (self memory readAt: 16rA50) equals: 6