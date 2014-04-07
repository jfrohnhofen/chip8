events
mouseUp: event

	super mouseUp: event.
	
	(self containsPoint: event cursorPoint)
		ifTrue: [self toggle]
		ifFalse: [self updateVisualState].