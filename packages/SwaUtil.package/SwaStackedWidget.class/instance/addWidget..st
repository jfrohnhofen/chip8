add/remove
addWidget: aMorph

	self children add: aMorph.
	self currentIndex ifNil: [self currentIndex: 1].