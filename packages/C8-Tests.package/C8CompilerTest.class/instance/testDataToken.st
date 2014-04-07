tests
testDataToken

	| token |
	
	token := C8DataToken data: (OrderedCollection new
		add: '0x34';
		add: '123';
		add: '0b1101';
		yourself)
		lineNumber: 0 address: 0.

	self
		assert: ((token evaluateUsing: '') first) equals: 52;
		assert: ((token evaluateUsing: '') second) equals: 123;
		assert: ((token evaluateUsing: '') third) equals: 13
