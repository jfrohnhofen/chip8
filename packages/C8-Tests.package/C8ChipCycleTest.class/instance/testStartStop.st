tests
testStartStop

	self assert: self pc bits equals: (C8Chip startAddress).
	self deny: self chip isRunning.

	self chip start.
	self assert: self chip isRunning.

	(Delay forMilliseconds: self execTime) wait.

	self chip stop.
	self deny: self chip isRunning.
	self assert: self pc bits > (C8Chip startAddress)
