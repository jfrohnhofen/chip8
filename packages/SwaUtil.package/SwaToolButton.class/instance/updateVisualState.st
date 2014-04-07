visual properties
updateVisualState

	self isChecked
		ifTrue: [self borderInset]
		ifFalse: [self borderRaised]