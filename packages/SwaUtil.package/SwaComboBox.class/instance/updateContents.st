updating
updateContents
	"Update the contents."

	|sel|
	self contentMorph
		contents: (self listSelectionIndex > 0
			ifTrue: [sel := self list at: self listSelectionIndex.
					sel isText
						ifTrue: [sel]
						ifFalse: [sel asString]]
			ifFalse: [' ']) "needs something to keep font"