tests
testCPU
	| cpu |
	cpu := C8CPU new.
	self assert: cpu dispatcher class equals: C8Dispatcher.