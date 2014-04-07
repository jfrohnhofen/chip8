tests
testCompile

	self ide editor setText: 'LD V0, 85'.
	self ide doCompile.

	self assert: self ide binary equals: #[16r60 16r55].
	self assert: self ide console text equals: 'Successfully compiled.'.
