initialize-release
initialize

	self
		labels: Dictionary new;
		tokens: OrderedCollection new;
		currentAddress: self startAddress;
		instructions: self initializeInstructions