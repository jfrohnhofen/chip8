tests
testClear

	(self graphics)
		draw: self sprite to: (18 @ 10);
		clear.
		
	self assert: self graphics buffer equals: self displayEmpty
