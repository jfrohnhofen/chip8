visibility
hideList
	"Hide the list."

	self listMorph ifNil: [^self].
	self listVisible ifFalse: [^self].
	self listMorph delete.
	self listMorph selectionIndex = self listSelectionIndex
		ifFalse: [self listMorph changeModelSelection: self listMorph selectionIndex].
	self changed.