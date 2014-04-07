tests
testMapping

	self compiler compile: self sampleSource.
	self assert: self compiler mapping equals: #(512 nil 514 516) asOrderedCollection
