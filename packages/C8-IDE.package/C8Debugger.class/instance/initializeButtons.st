initialization
initializeButtons

	self buttons: Dictionary new.

	self
		addMorph: (self buildButton: 'Start' action: #doStart)
			fullFrame: (LayoutFrame fractions: (0.6 @ 0 corner: 0.7 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Stop' action: #doStop)
			fullFrame: (LayoutFrame fractions: (0.7 @ 0 corner: 0.8 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Step' action: #doStep)
			fullFrame: (LayoutFrame fractions: (0.8 @ 0 corner: 0.9 @ 0) offsets: (5 @ 10 corner: -5 @ 40));

		addMorph: (self buildButton: 'Reset' action: #doReset)
			fullFrame: (LayoutFrame fractions: (0.9 @ 0 corner: 1 @ 0) offsets: (5 @ 10 corner: -5 @ 40))
