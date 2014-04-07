as yet unclassified
newVScrollbar
	"Answer a new vertical scrollbar."

	^SwaGeneralScrollBar new
		model: self;
		setValueSelector: #vScrollbarValue: