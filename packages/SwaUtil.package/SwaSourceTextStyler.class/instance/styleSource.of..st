styling
styleSource: aText of: aCompiledMethod
	
	| styledSourceText |
	self enabled ifFalse: [^ aText].
	styledSourceText := aText.
	self registeredStylers do: [ :styler | 
		styledSourceText := styler styleSource: styledSourceText of: aCompiledMethod ].
	^ styledSourceText.