initialize-release
initialize

	super initialize.

	ActiveHand addKeyboardListener: self.

	self
		buildKeypad;
		waitSemaphore: Semaphore forMutualExclusion;
		keyStates: 0;
		reset