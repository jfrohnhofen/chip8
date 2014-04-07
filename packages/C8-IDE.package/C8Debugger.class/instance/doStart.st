button actions
doStart

	self
		stepping: false;
		haltOnBreakpoint: false.

	self registerMorph hide.
	self chip start.
	self updateButtons