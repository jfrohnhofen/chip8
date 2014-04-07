actions
decrement: anInteger 

	| register |

	register := self register: anInteger.
	register bits > 0 ifTrue: [
		register bits: register bits - 1 ].
	^ register bits