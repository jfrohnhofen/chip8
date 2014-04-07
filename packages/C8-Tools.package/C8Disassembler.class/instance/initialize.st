initialize-release
initialize

	self
		dispatcher: (C8Dispatcher new
			cpu: self;
			yourself);
		source: ''