printing
printString

	^ self label asString, ': 0x', (self bits printStringBase: 16 length: 4 padded: true)