running
setUp

	self debugger: (C8Debugger new
		binary: self mazeBinary;
		breakpoints: #(16r206);
		mapping: #();
		source: '';
		startDebugging;
		yourself)
