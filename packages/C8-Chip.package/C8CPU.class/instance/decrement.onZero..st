actions
decrement: anInteger onZero: aBlock

	(self decrement: anInteger) = 0 ifTrue: [
		aBlock value ]