tests
testSneVxByte
	| r3 |
	r3 := self cpu register: 3.
	
	self
		loadROM: #[16r43 16r04 16r43 16r02];
		assertPcAdvance: [ r3 bits: 4 ] by: 1;
		assertPcAdvance: [ r3 bits: 3 ] by: 2
