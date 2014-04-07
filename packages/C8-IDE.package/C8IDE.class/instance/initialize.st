initialization
initialize

	super initialize.
	
	self
		compiler: C8Compiler new;
		disassembler: C8Disassembler new;
		debugger: (C8Debugger new
			editor: self;
			openInWorld;
			hide;
			yourself);

		initializeButtons;
		initializeEditor;

		setLabel: 'Chip8 - IDE';
		openInWorld;
		center: World center