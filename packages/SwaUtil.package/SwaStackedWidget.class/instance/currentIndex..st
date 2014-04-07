accessing
currentIndex: anInteger

	(anInteger = currentIndex
		or: [anInteger < 0
		or: [anInteger > self children size]]) ifTrue: [^ self].
	
	currentIndex := anInteger.
	
	self updateCurrentChild.