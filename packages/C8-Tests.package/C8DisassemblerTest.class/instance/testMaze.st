tests
testMaze

	self assert: (self disassembler disassemble: self mazeBinary) equals: self mazeSource.