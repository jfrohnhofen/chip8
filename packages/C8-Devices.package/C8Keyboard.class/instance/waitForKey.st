actions
waitForKey
	
	self clearLastKey.

	[ self lastKey ] whileNil: [
		(self waitSemaphore)
			initSignals;
			wait ].

	^ self lastKey