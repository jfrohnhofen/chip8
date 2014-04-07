accessing
removeKey: aKey ifAbsent: aBlock
	super removeKey: aKey ifAbsent: aBlock.
	self orderedKeys remove: aKey ifAbsent: [].