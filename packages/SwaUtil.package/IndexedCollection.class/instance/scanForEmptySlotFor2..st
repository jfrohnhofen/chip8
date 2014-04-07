as yet unclassified
scanForEmptySlotFor2: anObject
	
	| index start |
	index := start := 1.
	[ 
		| element |
		((element := array at: index) == nil or: [ self matchesElement: element with: anObject ])
			ifTrue: [ ^index ].
		(index := index \\ array size + 1) = start ] whileFalse.
	self errorNoFreeSpace