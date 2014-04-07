as yet unclassified
testBasicOperations
	| fooIndex aFooObject aBarObject barIndex |
	aFooObject := 'foo'.
	aBarObject := 'bar'.
	
	fooIndex := sut add: aFooObject.
	self should: [ sut size = 1 ].
	self should: [ sut includes: aFooObject ].
	self should: [ aFooObject == (sut at: fooIndex) ].
	self should: [ fooIndex ==  (sut indexOf: aFooObject) ].
	
	barIndex := sut add: aBarObject.
	self should: [ sut size = 2 ].
	self should: [ sut includes: aBarObject ].
	self should: [ aBarObject == (sut at: barIndex) ].
	
	sut remove: aFooObject.
	self should: [ sut size = 1 ].
	self shouldnt: [ sut includes: aFooObject ].
	self should: [ aBarObject == (sut at: barIndex) ].
	
	sut remove: aBarObject.
	self should: [ sut size = 0 ].
	self shouldnt: [ sut includes: aBarObject ].