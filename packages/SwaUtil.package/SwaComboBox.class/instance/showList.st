visibility
showList
	"Show the list."

	self listMorph owner isNil
		ifTrue: [self listMorph
					bounds: (self bounds bottomLeft extent: self extent x @ self listHeight).
				self world addMorphInLayer: self listMorph.
				self changed.
				self activeHand
					newMouseFocus: self listMorph]