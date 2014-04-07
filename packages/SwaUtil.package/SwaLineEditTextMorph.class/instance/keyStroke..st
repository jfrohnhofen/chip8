event handling
keyStroke: event
	"A line edit only supports one text line. Enable auto-accept if necessary."

	event keyCharacter = Character cr
		ifTrue: [(self acceptOnCR and: [self editView hasUnacceptedEdits])
			ifTrue: [self editor accept].
			^ self].
		
	super keyStroke: event.
	
	self autoAccept
		ifTrue: [self editView hasUnacceptedEdits
			ifTrue: [self editor accept]].
		
	self editView convertText.