printing
printOpcode: aMessage with: methodComments

	| opcodeString docString arguments |

	arguments := aMessage arguments collect: [ :argument |
		argument isInteger
			ifTrue: [ argument printStringHex ]
			ifFalse: [ argument ] ].

	opcodeString := methodComments first format: arguments.
	docString := methodComments second.

	self source:
		self source,
		opcodeString,
		'; [', self formatOpcodeAsBytes, '] ', 
		(docString contractTo: 50),
		String cr