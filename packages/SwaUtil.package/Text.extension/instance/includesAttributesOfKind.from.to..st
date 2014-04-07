*swautil-text
includesAttributesOfKind: anAttrClass from: start to: stop
	"Check whether this text has at least one run that includes an attribute of the given class in the specified range."
	
	| part |
	part := self copyFrom: start to: stop.
	part runs values do: [:array |
		array do: [:attr | (attr isKindOf: anAttrClass) ifTrue: [^ true]]].
	^ false