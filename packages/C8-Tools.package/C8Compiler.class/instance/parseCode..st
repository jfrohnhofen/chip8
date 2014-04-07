parsing
parseCode: aLine

	| parameters keywords |
	
	keywords := #('DT' 'ST' 'I' 'K' '[I]').

	self instructions keysAndValuesDo: [ :opcode :regex |
		(regex matches: aLine) ifTrue: [
			parameters := (regex subexpressions) asOrderedCollection.
			parameters removeFirst.
			(parameters intersection: keywords) ifEmpty: [
				self tokens add: (C8Token opcode: opcode parameters: parameters line: aLine address: self currentAddress).
				self currentAddress: self currentAddress  + self opcodeSize.
				^ '' ] ] ].

	^ aLine