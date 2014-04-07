visual properties
updateHoverEffect

	self isChecked
		ifTrue: [self borderRaised]
		ifFalse: [self borderInset]