accessing
adoptPaneColor: paneColor
	"Adopt the given pane color."
	
	super adoptPaneColor: paneColor.
	self hScrollbar adoptPaneColor: paneColor.
	self vScrollbar adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self color: (self scrollTarget isNil
		ifTrue: [self paneColor]
		ifFalse: [self scrollTarget color])
