actions
startDebugging

	self chip loadROM: self binary.

	self codeViewer
		setText: self source;
		breakpoints: (self breakpoints collect: [ :breakpoint |
			self mapping indexOf: breakpoint ]).

	self
		updateButtons;
		show;
		activate