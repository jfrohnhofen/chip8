instance creation
for: anObject get: aGetSelector set: aSetSelector help: aHelpMessage

	^ (self
		on: anObject
		text: aGetSelector
		accept: aSetSelector)
		setBalloonText: aHelpMessage