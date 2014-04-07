parsing
parseData: aLine

	| bytes |
	
	aLine = '' ifTrue: [ ^ nil ].

	bytes := aLine findTokens: ' '.
	self tokens add: (C8Token data: bytes lineNumber: self currentLineNumber address: self currentAddress).
	self currentAddress: self currentAddress + bytes size