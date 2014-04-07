updating
makeColorForm: anArray

	^ (ColorForm extent: 64 @ 32 depth: 1 fromArray: anArray offset: 0 @ 0)
		colors: self makeColors;
		yourself