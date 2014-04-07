*swautil
add: anObject ifPresent: aBlock
	"Add an object if it is absent. Else run the block"

	(self includes: anObject) 
		ifFalse: [^ self add: anObject]
		ifTrue: [^ aBlock value]