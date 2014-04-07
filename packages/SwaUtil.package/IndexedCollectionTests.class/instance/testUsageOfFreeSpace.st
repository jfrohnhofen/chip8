as yet unclassified
testUsageOfFreeSpace
	| getArraySize arraySize element |
	element := ''.
	10 timesRepeat: [ element := element, 'a'. sut add: element ].
	getArraySize := [ (sut instVarNamed: 'array') size ].
	arraySize := getArraySize value.
	
	sut removeAll.
	self should: [ getArraySize value == arraySize ].
	
	10 timesRepeat: [ element := element, 'a'. sut add: element ].
	self should: [ getArraySize value == arraySize ].
