tests
testClear
	self memory write: 16rEF to: 2000.
	self memory clear.
	self assert: (self memory readAt: 2000) equals: 0