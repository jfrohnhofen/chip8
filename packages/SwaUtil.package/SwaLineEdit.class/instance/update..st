updating
update: aSymbol

	aSymbol == #appendEntry
		ifTrue: [^ self].
		
	super update: aSymbol.