tests
testLd

	| x y |

	x := self cpu register: 0.
	x bits: 16rA.
	y := self cpu register: 1.
	y bits: 16rB.
	
	self cpu ldVx: 0 Vy: 1.
	self assert: x bits equals: 16rB.
	self assert: y bits equals: 16rB