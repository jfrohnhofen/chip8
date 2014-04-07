*SwaUtil-override
getSourceFor: selector in: class

	| unstyledSource styledSource |
	unstyledSource := self getUnstyledSourceFor: selector in: class.
	styledSource := SwaSourceTextStyler instance styleSource: unstyledSource of: self.
	^ styledSource.