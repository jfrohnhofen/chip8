instance creation
getTextWithTitle: aTitleString label: aLabelString value: aDefaultValue

	| dialog |
	dialog := self new
		initializeWithTitle: aTitleString
		label: aLabelString;
		setText: aDefaultValue.
	dialog open.
	
	dialog cancelled
		ifTrue: [^ nil]
		ifFalse: [^ dialog text]