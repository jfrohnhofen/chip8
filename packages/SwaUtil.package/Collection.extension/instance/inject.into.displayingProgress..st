*swautil
inject: thisValue into: binaryBlock displayingProgress: aString
	"Like inject:into: but displaying the progress of the operation."
	
	| nextValue |
	nextValue := thisValue.
	self do: [:each | nextValue := binaryBlock value: nextValue value: each] displayingProgress: aString.
	^nextValue