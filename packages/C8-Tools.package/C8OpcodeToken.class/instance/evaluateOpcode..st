evaluating
evaluateOpcode: opcode
	
	^ Integer readFrom: (opcode copyWithRegex: '[kmnxyz]' matchesReplacedWith: '0') base: 16