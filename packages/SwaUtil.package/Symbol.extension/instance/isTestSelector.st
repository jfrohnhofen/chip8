*SwaUtil
isTestSelector
	^ (self last ~= $:) and: ['test*' match: self]