*swautil-text
includesAttributesOfKind: anAttrClass
	"Check whether this text has at least one run that includes an attribute of the given class."
	
	runs values do: [:array |
		array do: [:attr | (attr isKindOf: anAttrClass) ifTrue: [^ true]]].
	^ false