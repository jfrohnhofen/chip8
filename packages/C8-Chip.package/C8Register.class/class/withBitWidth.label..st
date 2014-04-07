instance creation
withBitWidth: anInteger label: aSymbol

	^ self new 
		initialize;
		bitWidth: anInteger;
		label: aSymbol
