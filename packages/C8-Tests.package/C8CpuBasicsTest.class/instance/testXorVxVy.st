tests
testXorVxVy

	| x y |

	x := self cpu register: 13.
	y := self cpu register: 8.
	
	x bits: 16rC. "1100"
	y bits: 16rA. "1010"
	
	self cpu xorVx: 13 Vy: 8.
	self assert: x bits equals: 16r6 "0110"