parsing
parseBreakpoint: aLine

	^ aLine = 'BREAK'
		ifTrue: [ self tokens add: (C8Token breakpoint: self currentAddress). '' ]
		ifFalse: [ aLine ]