initialization
initialize

	super initialize.
	self
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		changeTableLayout;
		listDirection: #leftToRight;
		color: Color transparent.