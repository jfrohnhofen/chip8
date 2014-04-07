initialization
initialize

	super initialize.

	self
		chip: (C8Chip new
			attachDebugger: self;
			yourself);
		haltOnBreakpoint: true;
		stepping: false;

		minimumExtent: 900 @ 600;

		initializeButtons;
		initializeCodeViewer;
		initializeDevices;

		setLabel: 'Chip8 - Debugger';
		center: World center