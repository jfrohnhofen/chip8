initialization
initializeWithTitle: aTitleString label: aLabelString

	self
		buttons: {
			self createOkButton: 'Ok'.
			self createCancelButton: 'Cancel'};
		contentMorph: (self createCol: {
			(self createLabel: aLabelString) hResizing: #spaceFill.
			self createTextInput});
		model: contents;
		addGrips;
		title: aTitleString.