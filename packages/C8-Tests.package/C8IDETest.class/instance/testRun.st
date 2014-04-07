tests
testRun

	self ide editor setText: 'LD V0, 85'.
	self ide doRun.
	self deny: self ide visible.

	self ide doneDebugging.
	self assert: self ide visible
