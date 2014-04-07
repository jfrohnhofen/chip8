actions
reset

	self stop.
	
	self process ifNotNil: [ self process terminate ].
	self timers ifNotNil: [ self timers terminate ].

	self
		process: nil;	
		timers: nil.

	self cpu reset.
	self graphics clear.
	self keyboard reset