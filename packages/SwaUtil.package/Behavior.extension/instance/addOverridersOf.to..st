*SwaUtil
addOverridersOf: aSelector to: aCollection
	self allSubclassesDo: [:subclass | 
		(subclass includesSelector: aSelector)
			ifTrue: [aCollection add: subclass]
			ifFalse: [subclass addOverridersOf: aSelector to: aCollection]]