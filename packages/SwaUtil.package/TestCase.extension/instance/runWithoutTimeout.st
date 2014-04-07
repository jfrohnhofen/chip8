*SwaUtil
runWithoutTimeout
	| result |
	result := TestResult new.
	result runCaseWithoutTimeout: self.
	^result