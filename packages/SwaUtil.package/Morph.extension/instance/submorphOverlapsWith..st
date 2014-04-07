*swautil-testing
submorphOverlapsWith: anotherMorph

	self submorphs do: [:m |
		(m topLeft = anotherMorph topLeft and: [m ~= anotherMorph])
			ifTrue: [^ true]].
	^ false