*swautil-text
attributesOfKind: anAttrClass from: start to: stop
	"Return a collection with all instances of the given attribute class that can be found in the specified range."
	
	| part result |
	start > stop ifTrue: [
		^ (self attributesAt: start) select: [:attr | attr isKindOf: anAttrClass]].
	
	result := OrderedCollection new.
	part := self copyFrom: start to: stop.
	part runs withStartStopAndValueDo: [:i :j :attributes |
		attributes
			select: [:attr | attr isKindOf: anAttrClass]
			thenDo: [:attr | result addIfNotPresent: attr]].
	^ result.