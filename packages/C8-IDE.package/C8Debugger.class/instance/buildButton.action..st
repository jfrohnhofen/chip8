initialization
buildButton: aLabelString action: aSelector

	^ self buttons at: aLabelString put: (SimpleButtonMorph new
		target: self;
		actionSelector: aSelector;
		label: aLabelString;
		color: Color white darker;
		extent: 100 @ 30;
		yourself)