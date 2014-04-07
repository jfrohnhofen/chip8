as yet unclassified
executeInNextStep: aBlock
	blockToExecute := aBlock.
	ActiveWorld startStepping: self at: Time millisecondClockValue selector: #step arguments: nil stepTime: nil.