as yet unclassified
remove: oldObject ifAbsent: anExceptionBlock
	| index |
	index := self scanFor: oldObject.
	index 
		ifNil: [ ^ anExceptionBlock value ]
		ifNotNil: [ 
			array at: index put: nil.
			tally := tally - 1 ].
	^ oldObject