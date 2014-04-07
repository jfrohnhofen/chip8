tests
testAnd

	| x y |

	x := self cpu register: 1.
	y := self cpu register: 2.
	
	x bits: 16r11.
	y bits: 16r01.
	
	self cpu andVx: 1 Vy: 2.
	self assert: x bits equals: 16r01