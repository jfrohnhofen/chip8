accessing
checkState: aSymbol
	"Possible values: #checked, #unchecked."
	
	checkState := aSymbol.
	self updateVisualState.
	
	((self isAutoExclusive and: [self owner notNil]) and: [aSymbol = #checked])
		ifTrue: [self owner submorphs
			select: [:m | (m isKindOf: self class) and: [m ~= self]]
			thenDo: [:m | m setChecked: false]].