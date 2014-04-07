user interface
newButtonMorph
	"Answer a new button morph"

	^(PluggableButtonMorphPlus
		on: self
		getState: nil
		action: #popList
		label: #buttonLabel)
			getEnabledSelector: nil; "#enabled;"
			label: self buttonLabel; 
			vResizing: #spaceFill;
			hResizing: #rigid;
			extent: self buttonExtent;
			cornerStyle: self cornerStyle