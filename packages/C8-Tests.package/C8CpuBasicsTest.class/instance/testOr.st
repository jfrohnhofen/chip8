tests
testOr

	| x y |

	x := self cpu register: 8.
	y := self cpu register: 9.
	
	x bits: 16rC. "1100"
	y bits: 16rA. "1010"
	
	self cpu orVx: 8 Vy: 9.
	self assert: x bits equals: 16rE "1110".