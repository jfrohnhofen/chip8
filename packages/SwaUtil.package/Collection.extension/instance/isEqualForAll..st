*SwaUtil
isEqualForAll: aBlock

	^ (self collect: aBlock) asSet size = 1 