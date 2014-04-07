tests
testMemory
	| memory |
	memory := C8Memory new.
	memory content: #symbol.
	self assert: memory content equals: #symbol