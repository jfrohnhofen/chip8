bitrange access
bitRange: anInteger atIndex: anIndex

	^ (bits >> (anInteger * anIndex)) bitAnd: ((2 raisedTo: anInteger) -1)