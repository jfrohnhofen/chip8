instance creation
label: aString receiver: anObject selector: aSymbol help: aHelpMessage

	^ self new
		label: aString;
		target: anObject;
		actionSelector: aSymbol;
		actWhen: #buttonUp;
		setBalloonText: aHelpMessage