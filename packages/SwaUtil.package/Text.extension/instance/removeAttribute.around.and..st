*swautil-text
removeAttribute: anAttribute around: leftIndex and: rightIndex
	"Remove the given attribute from all indices that are adjacent to the given ones."

	| start stop |
	start := leftIndex.
	[start > 0 and: [(self attributesAt: start) includes: anAttribute]]
		whileTrue: [start := start - 1].
	stop := rightIndex.
	[stop <= self size and: [(self attributesAt: stop) includes: anAttribute]]
		whileTrue: [stop := stop + 1].

	self removeAttribute: anAttribute from: (start max: 0) to: (stop min: runs size).