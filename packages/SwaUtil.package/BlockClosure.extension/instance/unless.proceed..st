*SwaUtil
unless: aPredicateBlock proceed: aContinuingBlock
	| selfResult |
	selfResult := self value.
	^ (aPredicateBlock cull: selfResult)
		ifFalse: [selfResult]
		ifTrue: [aContinuingBlock cull: selfResult]