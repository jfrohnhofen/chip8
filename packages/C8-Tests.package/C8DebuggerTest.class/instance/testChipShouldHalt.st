tests
testChipShouldHalt
	
	| halt |

	halt := #(1 4 6).

	self debugger stepping: true.
	self debugger breakpoints: #(1 2 4 5 6).

	1 to: 10 do: [ :i |
		self assert: (self debugger chipShouldHalt: i) ].

	self debugger stepping: false.
	
	1 to: 10 do: [ :i |
		(halt includes: i)
			ifTrue: [ self assert: (self debugger chipShouldHalt: i).
				self debugger haltOnBreakpoint: false ]
			ifFalse: [ self deny: (self debugger chipShouldHalt: i) ] ]
