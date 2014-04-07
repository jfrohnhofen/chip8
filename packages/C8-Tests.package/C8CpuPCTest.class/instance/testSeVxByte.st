tests
testSeVxByte
	| r0 |
	r0 := self cpu register: 0.
	r0 bits: 1.

	self
		loadROM: #[ 16r30 16r00 16r30 16r01];
		assertPcAdvanceBy: 1;
		assertPcAdvanceBy: 2
