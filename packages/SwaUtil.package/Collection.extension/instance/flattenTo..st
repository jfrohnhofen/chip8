*SwaUtil
flattenTo: level
	| result |
	(level notNil and: [level < 1]) ifTrue: [^ self].
	result := self species new.
	self do: [:ea |
		ea shouldFlatten
			ifTrue: [result addAll: (ea flattenTo: (level ifNotNil: [level - 1]))]
			ifFalse: [result add: ea]].
	^ result