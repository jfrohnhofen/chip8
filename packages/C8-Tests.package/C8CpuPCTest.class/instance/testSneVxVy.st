tests
testSneVxVy 
	| r3 r5 |
	r3 := self cpu register: 3.
	r5 := self cpu register: 5.
	
	self
		loadROM: #[16r93 16r50 16r93 16r50];
		assertPcAdvance: [ r3 bits: 2. r5 bits: 2 ] by: 1;
		assertPcAdvance: [ r3 bits: 3. r5 bits: 4 ] by: 2
