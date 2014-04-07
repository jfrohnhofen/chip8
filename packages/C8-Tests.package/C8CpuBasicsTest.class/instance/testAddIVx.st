tests
testAddIVx 

	| i old offset |

	offset := 42.
	i := self cpu register: #I.
	old := i bits.
	self cpu register: 6 bits: offset.
	self cpu addIVx: 6.
	self assert: i bits equals: old + offset.