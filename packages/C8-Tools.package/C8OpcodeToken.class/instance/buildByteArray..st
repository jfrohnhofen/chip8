evaluating
buildByteArray: opcode

	^ OrderedCollection new
		add: (opcode bitShift: -8);
		add: (opcode bitAnd: 16rFF);
		asByteArray