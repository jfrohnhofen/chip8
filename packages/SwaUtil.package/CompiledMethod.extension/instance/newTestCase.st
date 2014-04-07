*SwaUtil
newTestCase
	
	self assert: [ self isTestMethod ].
	^ self methodClass selector: self selector.