actions
stop

	self isRunning ifFalse: [ ^ nil ].

	self process suspend.
	self timers suspend