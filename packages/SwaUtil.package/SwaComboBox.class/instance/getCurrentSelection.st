model access
getCurrentSelection
	"Answer the current selection from the model."

	|selection|
	selection := self model perform: self getIndexSelector.
	^(self list includes: selection)
		ifTrue: [selection]