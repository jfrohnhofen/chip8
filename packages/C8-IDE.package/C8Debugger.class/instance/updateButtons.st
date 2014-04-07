updating
updateButtons

	(self chip isRunning and: [ self stepping not ])
		ifTrue: [ self updateButtons: #(Stop Reset) ]
		ifFalse: [ self updateButtons: #(Start Step Reset) ]