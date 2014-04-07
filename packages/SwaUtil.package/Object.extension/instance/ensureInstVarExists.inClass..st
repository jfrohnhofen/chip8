*SwaUtil
ensureInstVarExists: varName inClass: aClass
	
	(aClass instVarNames includes: varName)
		ifFalse: [aClass addInstVarName: varName]