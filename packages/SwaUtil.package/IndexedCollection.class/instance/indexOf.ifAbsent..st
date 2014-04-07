as yet unclassified
indexOf: anObject ifAbsent: anExceptionBlock

	1 to: array size do: [ :index |
		(self matchesElement: (array at: index) with: anObject) ifTrue: [^ index]].
	^ anExceptionBlock value