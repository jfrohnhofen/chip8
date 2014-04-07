disassembling
doesNotUnderstand: aMessage

	| parser comments | 

	parser := C8CPU class parserClass new.
	parser parseSelector: (C8CPU sourceCodeAt: aMessage selector).
	comments := parser parseMethodComment: aMessage selector setPattern: [ :x | x first ].

	self printOpcode: aMessage with: comments
