*SwaUtil
isTestMethod
	^ (self methodClass isTestCaseClass) and: [self selector isTestSelector]