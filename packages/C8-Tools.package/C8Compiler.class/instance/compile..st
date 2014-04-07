compiling
compile: sourceCode

	self currentAddress: self startAddress.
	self labels removeAll.
	self tokens removeAll.
	
	self parse: sourceCode lines.
	^ self assemble