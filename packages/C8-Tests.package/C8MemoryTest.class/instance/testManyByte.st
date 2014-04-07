tests
testManyByte

	| bytes | 

	bytes := #[16r12 16r3A].
	self memory writeMany: bytes to: 16r244.
	self assert: (self memory read: 2 at: 16r244) equals: bytes