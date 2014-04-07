updating
updateCurrentChild

	self currentIndex ifNil: [^ self].
	self
		removeAllMorphs;
		addMorphBack: (self children at: self currentIndex).