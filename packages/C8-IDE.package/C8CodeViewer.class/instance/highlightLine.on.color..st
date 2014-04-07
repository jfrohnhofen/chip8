drawing
highlightLine: anInteger on: aCanvas color: aColor

	(anInteger between: 1 and: self paragraph lines size)
		ifTrue: [ aCanvas fillRectangle: (self paragraph lines at: anInteger) rectangle fillStyle: aColor ]