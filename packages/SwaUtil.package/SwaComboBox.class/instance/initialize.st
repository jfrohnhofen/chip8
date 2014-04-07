initialization
initialize
	"Initialize the receiver."

	super initialize.
	listSelectionIndex := 0.
	
	list := #().
	self
		useSelectionIndex: true;
		clipSubmorphs: true;
		layoutPolicy: SwaRowLayout new;
		layoutInset: 2;
		cellPositioning: #center;
		color: Color white;
		cornerStyle: #square;
		listMorph: self newListMorph;
		contentMorph: self newContentMorph;
		buttonMorph: self newButtonMorph;
		borderStyle: BorderStyle default;
		addMorphBack: self contentMorph;
		addMorphBack: (self addDependent: self buttonMorph);
		on: #mouseDown send: #popList to: self;
		height: 22.