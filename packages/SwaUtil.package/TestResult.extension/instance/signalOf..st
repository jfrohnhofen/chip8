*SwaUtil
signalOf: aTestCase
	^ SwaTestExceptionRegistry at: aTestCase ifAbsent: [nil]