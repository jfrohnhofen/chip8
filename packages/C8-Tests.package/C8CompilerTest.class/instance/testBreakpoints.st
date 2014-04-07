tests
testBreakpoints

	self compiler compile: self sampleSource.
	self assert: self compiler breakpoints equals: #(514 516) asOrderedCollection
