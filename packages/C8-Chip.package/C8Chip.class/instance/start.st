actions
start

	self isRunning ifTrue: [ ^ nil ].
	
	self process ifNil: [ self process: (self newProcessFor:  [ self doCycle ] atRate: self cpu frequency) ].
	self process resume.

	self timers ifNil: [ self timers: (self newProcessFor: [ self decrementTimers ] atRate: 60) ].
	self timers resume