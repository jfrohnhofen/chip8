tests
testLabels

	| startAddress |

	(self compiler)
		parseLabels: 'TEST1: TEST2: TEST3: TEST4';
		currentAddress: 234;
		parseLabels: 'TEST5: TEST6'.

	self
		assert: (self compiler labels size) equals: 4;
		assert: (self compiler labels at: 'TEST1') equals: self compiler startAddress;
		assert: (self compiler labels at: 'TEST2') equals: self compiler startAddress;
		assert: (self compiler labels at: 'TEST3') equals: self compiler startAddress;
		assert: (self compiler labels at: 'TEST5') equals: 234.

	startAddress := self compiler startAddress printString.
	self assert: self compiler labelCode equals:
		'TEST3 := ', startAddress, '. TEST1 := ', startAddress, '. TEST2 := ', startAddress, '. TEST5 := 234. '