tests
testSeVxVy
	| r4 r5 |
	r4 := self cpu register: 4.
	r5 := self cpu register: 5.

	self
		loadROM: #[ 16r54 16r50 16r40 16r50 ];
		assertPcAdvance: [ r4 bits: 5. r5 bits: 6 ] by: 1;	
		assertPcAdvance: [ r4 bits: 3. r5 bits: 3 ] by: 2
