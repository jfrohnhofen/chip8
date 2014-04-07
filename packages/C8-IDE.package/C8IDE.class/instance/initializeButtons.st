initialization
initializeButtons

	self
		addMorph: (self buildButton: 'Compile & Run' action: #doRun)
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.25 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Compile' action: #doCompile)
			fullFrame: (LayoutFrame fractions: (0.25 @ 0 corner: 0.5 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Load ROM' action: #doLoadROM)
			fullFrame: (LayoutFrame fractions: (0.5 @ 0 corner: 0.75 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Load Source' action: #doLoadSource)
			fullFrame: (LayoutFrame fractions: (0.75 @ 0 corner: 1 @ 0) offsets: (5 @ 10 corner: -5 @ 40))