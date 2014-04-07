tests
testldDTVx 

	| dt vx |

	dt := self cpu register: #DT.
	dt bits: 5.
	vx := self cpu register: 3.
	vx bits: 2.
	self cpu ldDT: 3.
	self assert: dt bits equals: 2