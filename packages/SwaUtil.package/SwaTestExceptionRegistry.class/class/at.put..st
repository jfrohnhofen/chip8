accessing
at: aTestCase put: anException
	| key |
	key := TestCases keys 
		detect: [:each | 
			each class = aTestCase class and: [each selector = aTestCase selector]] 
		ifNone: [nil].
	key ifNotNil: [TestCases removeKey: key].
	^ TestCases 
		at: aTestCase
		put: anException