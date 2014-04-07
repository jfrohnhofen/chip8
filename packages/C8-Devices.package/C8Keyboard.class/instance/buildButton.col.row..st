initialize-release
buildButton: anInteger col: col row: row

	^ self buttons at: anInteger put: (SimpleButtonMorph new
		target: self;
		actionSelector: #toggleButton:;
		arguments: (Array with: anInteger);
		label: anInteger printStringHex;
		color: Color white darker;
		extent: 50@50;
		position: 55 * (col @ row) - 38;
		yourself)