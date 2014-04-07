tests
testClearLastKey
	self keyboard lastKey: 500.
	self keyboard clearLastKey.
	self assert: (self keyboard lastKey) equals: nil
	