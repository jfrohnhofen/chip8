instance creation
newProcessFor: aBlock atRate: anInteger

	^ [ [
			aBlock value.
			(Delay forMilliseconds:  1000 / anInteger) wait ]
		repeat ]
	newProcess