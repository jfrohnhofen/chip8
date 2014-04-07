initialization
initializeEditor

	self editor: (PluggableTextMorphPlus new
		color: Color white;
		setText: self initialSource;
		yourself).
	
	self console: (PluggableTextMorphPlus new
		color: Color white;
		setText: '';
		yourself).

	self
		addMorph: self editor fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.8) offsets: (5 @ 45 corner: -5 @ -3));
		addMorph: self console fullFrame: (LayoutFrame fractions: (0 @ 0.8 corner: 1 @ 1) offsets: (5 @ 3 corner: -5 @ -5))