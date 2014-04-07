instance creation
newFor: aC8Graphics

	^ (aC8Graphics addDependent: self new)
		update: aC8Graphics;
		yourself
