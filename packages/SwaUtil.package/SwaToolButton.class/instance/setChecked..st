accessing
setChecked: aBoolean

	aBoolean
		ifTrue: [self checkState: #checked]
		ifFalse: [self checkState: #unchecked]