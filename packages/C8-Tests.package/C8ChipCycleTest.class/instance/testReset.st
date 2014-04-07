tests
testReset

	self chip start.
	(Delay forMilliseconds: self execTime * 2) wait.
	self chip reset.
	self deny: self chip isRunning.
	self assert: self pc bits equals: (C8Chip startAddress).
	self chip stop
