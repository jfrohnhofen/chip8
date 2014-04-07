instance creation
opcode: opcode parameters: parameters line: line address: address

	^ C8OpcodeToken new
		opcode: opcode;
		parameters: parameters;
		line: (line replaceAll: ',' with: ', ' withBlanksCondensed);
		address: address;
		yourself
