as yet unclassified
newHScrollbar
	"Answer a new horizontal scrollbar."

	^SwaGeneralScrollBar new
		model: self;
		setValueSelector: #hScrollbarValue: