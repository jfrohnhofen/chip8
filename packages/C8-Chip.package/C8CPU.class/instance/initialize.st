initialize-release
initialize

	self
		dispatcher: (C8Dispatcher new
			cpu: self;
			yourself);
		stack: (Array new: 16);
		frequency: 400.

	self registers: (Dictionary new
			at: #I put: (C8Register withBitWidth: 16 label: #I);
			at: #DT put: (C8Register withLabel: #DT);
			at: #ST put: (C8Register withLabel: #ST);
			at: #PC put: (C8Register withBitWidth: 16 label: #PC);
			at: #SP put: (C8Register withBitWidth: 16 label: #SP);
			yourself).

	0 to: 15 do:
		[ :n | self registers at: n put: (C8Register withLabel: 'V', (n asHexDigit asSymbol)) ]