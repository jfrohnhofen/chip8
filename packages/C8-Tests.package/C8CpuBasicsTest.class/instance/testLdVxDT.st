tests
testLdVxDT

	| dt x |

	dt := self cpu register: #DT.
	dt bits: 16rAB.
	x := self cpu register: 5.
	self cpu ldVxDT: 5.
	self assert: x bits equals: 16rAB