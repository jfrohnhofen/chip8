tests
testldBVx

	| anInteger address |

	anInteger := 123.
	address := C8Chip startAddress.

	(self cpu register: 3) bits: anInteger.
	(self cpu register: #I) bits: address.

	self cpu ldB: 3.
	self assert: (self cpu ram read: 3 at: address) equals: #[ 1 2 3 ].