adding
addIfAbsent: newObject
	| added |
	added := super addIfAbsent: newObject.
	added ifTrue: [ self orderedElements add: newObject ]