as yet unclassified
add: newObject
	| index |
	newObject ifNil: [self error: 'IndexCollections cannot meaningfully contain nil as an element'].
	index := self scanFor: newObject.
	index 
		ifNil: [
			index := self scanForEmptySlot.
			self atNewIndex: index put: newObject ].
	^ index