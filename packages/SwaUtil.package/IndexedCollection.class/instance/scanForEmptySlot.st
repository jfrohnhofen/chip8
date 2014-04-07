as yet unclassified
scanForEmptySlot
	
	| index start |
	index := start := 1.
	[ 
		((array at: index) == nil) 
			ifTrue: [ ^index ].
		(index := index \\ array size + 1) = start ] whileFalse.
	self errorNoFreeSpace