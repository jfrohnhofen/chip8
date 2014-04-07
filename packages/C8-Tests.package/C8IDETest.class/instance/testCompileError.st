tests
testCompileError

	self ide editor setText: 'LD V0, 55', String lf, 'LD v0, 55'.
	self ide doCompile.

	self assert: self ide console text equals: self compileErrors
