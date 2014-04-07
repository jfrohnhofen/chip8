tests
testMaze

	self
		assert: (self compiler compile: self mazeSource) equals: self mazeBinary;
		assert: (self compiler errors) equals: '';
		assert: self compiler successful
