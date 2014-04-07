instance creation
icon: aForm label: aString receiver: anObject selector: aSymbol help: aHelpMessage

	^ self new
		initializeWithThumbnail: aForm asMorph
		withLabel: aString
		andColor: Color white
		andSend: aSymbol
		to: anObject;
		actWhen: #buttonUp;
		actionSelector: aSymbol; "Necessary again."
		setBalloonText: aHelpMessage