initialization
initializeCodeViewer

	self codeViewer: (C8PluggableCodeViewer new
		color: Color white;
		setText: '';
		yourself).

	self addMorph: self codeViewer
		fullFrame: (LayoutFrame fractions: (0.6 @ 0 corner: 1 @ 1) offsets: (5 @ 45 corner: -5 @ -5))