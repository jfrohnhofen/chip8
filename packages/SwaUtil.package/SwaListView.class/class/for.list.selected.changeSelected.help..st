instance creation
for: aModel list: listSelector selected: getSelector changeSelected: setSelector help: helpText

	^ PluggableListMorph new
"		selectionColor: self selectionColor;
		font: self listFont;"
		on: aModel
		list: listSelector
		selected: getSelector
		changeSelected: setSelector
		menu: nil
		keystroke: nil;
		autoDeselect: false;
		cornerStyle: #square;
		color: Color white;
		borderStyle: (BorderStyle inset width: 1);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		"getEnabledSelector: nil;"
		setBalloonText: helpText