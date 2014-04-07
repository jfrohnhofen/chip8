model access
acceptTextInModel
	"Overridden to ensure String - not Text."
	
	| valueToAccept |
	valueToAccept := self convertedValue.
	^setTextSelector isNil or:
		[setTextSelector numArgs = 2
			ifTrue: [model perform: setTextSelector with: valueToAccept with: self]
			ifFalse: [model perform: setTextSelector with: valueToAccept]]
