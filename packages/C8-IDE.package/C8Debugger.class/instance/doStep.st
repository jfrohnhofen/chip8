button actions
doStep

	self
		stepping: true;
		haltOnBreakpoint: false.

	self chip start.
	self updateButtons