*SwaUtil
fromQualifiedName: aQualifiedName
	"CompiledMethod fromQualifiedName: 'Object >> #asString' "
	|substrings classname selectorString selector class|
	substrings := aQualifiedName subStrings: '>>'.
	classname := substrings first withBlanksTrimmed.
	class := (classname endsWith: ' class')
		ifTrue: [ (Smalltalk at: (classname allButLast: 6) asSymbol) class]
		ifFalse: [ Smalltalk at: classname asSymbol ].
	selectorString := substrings second withBlanksTrimmed.
	selector := (selectorString copyFrom: 2 to: selectorString size) asSymbol.
	^ class compiledMethodAt: selector.