as yet unclassified
scanFor: anObject

	| index start |
	index := start := 1.
	[ 
		(self matchesElement: (array at: index) with: anObject )
			ifTrue: [ ^index ].
		(index := index \\ array size + 1) = start ] whileFalse.
	^ nil