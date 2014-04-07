*SwaUtil
slotNamed: aName put: aValue inClass: aClass

	self ensureInstVarExists: aName inClass: aClass.
	^ self instVarNamed: aName put: aValue