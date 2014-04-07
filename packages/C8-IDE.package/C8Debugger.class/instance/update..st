updating
update: aRegister
	
	aRegister label = #PC ifTrue: [
		self codeViewer activeLine: (self mapping indexOf: aRegister bits).
		self codeViewer changed ].

	(self registers keys includes: (aRegister label)) ifTrue:
		[ (self registers at: (aRegister label)) contents: aRegister printString ]