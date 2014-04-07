*SwaUtil
testMethods
	^ self methodDict values asIdentitySet select: [ :m | m isTestMethod ]