initialize-release
initialize
	self rootTable: {
		[ self op00Eb ].
		[ self op1nnn ].
		[ self op2nnn ].
		[ self op3xkk ].
		[ self op4xkk ].
		[ self op5xy0 ].
		[ self op6xkk ].
		[ self op7xkk ].
		[ self op8xyb ].
		[ self op9xy0 ].
		[ self opAnnn ].
		[ self opBnnn ].
		[ self opCxkk ].
		[ self opDxyn ].
		[ self opExbb ].
		[ self opFxbb ]
	}