as yet unclassified
testForIdentitySemantic
	| fooIndex aFooObject  |
	aFooObject := 'foo'.
	
	fooIndex := sut add: aFooObject.
	self should: [ sut includes: aFooObject ].
	self should: [ aFooObject == (sut at: fooIndex) ].
	
	self should: [ fooIndex == (sut add: aFooObject) ].
	self shouldnt: [ fooIndex == (sut add: aFooObject copy) ].