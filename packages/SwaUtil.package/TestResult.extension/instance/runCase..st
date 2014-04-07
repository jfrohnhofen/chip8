*SwaUtil
runCase: aTestCase
	| testCasePassed |
	testCasePassed := true.
	[[aTestCase runCase] 
			on: self class failure
			do: 
				[:signal | 
				failures add: aTestCase.
				testCasePassed := false.
				SwaTestExceptionRegistry at: aTestCase put: signal.
				signal return: false]]
					on: self class error
					do:
						[:signal |
						errors add: aTestCase.
						testCasePassed := false.
						SwaTestExceptionRegistry at: aTestCase put: signal.
						signal return: false].
	testCasePassed ifTrue: [passed add: aTestCase.
							SwaTestExceptionRegistry at: aTestCase put: nil.]