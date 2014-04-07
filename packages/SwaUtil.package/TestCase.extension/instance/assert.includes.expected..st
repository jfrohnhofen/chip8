*SwaUtil
assert: aCollection includes: anElement expected: aBoolean
	^ self
		assert: ((aCollection includes: anElement) xor: aBoolean not)
		description: (
			String streamContents: [:s | 
				s nextPutAll: 'Unexpectedly, the element: '.
				s nextPutAll: (anElement printStringLimitedTo: 20).
				s nextPutAll: ' is '.
				aBoolean ifTrue: [
					s nextPutAll: ' not '].
				s nextPutAll: 'included in: '.
				s nextPutAll: (aCollection printStringLimitedTo: 20)]).
			