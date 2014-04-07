bitrange access
nibbles: anInteger to: anotherInteger

	^ self bitRange: (anotherInteger-anInteger) * 4 atIndex: anInteger