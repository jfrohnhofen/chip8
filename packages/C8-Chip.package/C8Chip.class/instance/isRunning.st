testing
isRunning

	^ self process notNil and: [ self process isSuspended not ]