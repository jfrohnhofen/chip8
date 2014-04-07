*SwaUtil
slotNamed: aName inClass: aClass

	self ensureInstVarExists: aName inClass: aClass.
	^ self instVarNamed: aName.