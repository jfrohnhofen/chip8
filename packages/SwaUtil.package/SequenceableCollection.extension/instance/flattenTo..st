*SwaUtil
flattenTo: level

	(level notNil and: [level < 1]) ifTrue: [^ self].
	^ self species streamContents:
		[:stream |
			self do: [:ea |
				ea shouldFlatten
					ifTrue: [	stream nextPutAll: (ea flattenTo: (level ifNotNil: [level - 1]))]
					ifFalse: [stream nextPut: ea]]]