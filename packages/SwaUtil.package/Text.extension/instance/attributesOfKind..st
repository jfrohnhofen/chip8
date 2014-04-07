*swautil-text
attributesOfKind: anAttrClass
	"Return a collection with all instances of the given attribute class that can be found in this text."
	
	| result |
	result := OrderedCollection new.
	runs values do: [:array |
		array do: [:attr | (attr isKindOf: anAttrClass)
			ifTrue: [result addIfNotPresent: attr]]].
	^ result