*SwaUtil
detect: predicateBlock thenDo: aBlock ifNone: exceptionBlock

	aBlock cull: (
		self 
			detect: predicateBlock
			ifNone: [^ exceptionBlock value])
			