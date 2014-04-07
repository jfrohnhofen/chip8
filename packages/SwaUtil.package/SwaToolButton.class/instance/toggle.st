actions
toggle

	(self isAutoExclusive and: [self isChecked])
		ifTrue: [self updateVisualState. ^ self].

	self setChecked: (self isCheckable and: [self isChecked not]).