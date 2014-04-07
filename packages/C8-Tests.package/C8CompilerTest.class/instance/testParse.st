tests
testParse
	
	self assert: (self compiler parseComment: 'DRW   V5 ,   VA,4 ; Useless comment') equals: 'DRW V5 , VA,4'.

	self compiler parse: (self parseSource splitBy: String cr).
	self
		assertOpcodeToken: (self compiler tokens first);
		assertDataToken: (self compiler tokens second);
		assertBreakpointToken: (self compiler tokens third);
		assertOpcodeToken: (self compiler tokens fourth)
