accessing
at: aTestCase ifAbsent: aBlock
	| key |
	key := TestCases keys 
		detect: [:each | 
			each class = aTestCase class and: [each selector = aTestCase selector]] 
		ifNone: [nil].
	^ TestCases 
		at: key
		ifAbsentPut: aBlock