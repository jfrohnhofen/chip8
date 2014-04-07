tests
testShlVxVy

	| x vf |

	vf := self cpu register: 15.
	x := self cpu register: 10.
 	
	x bits: 16r80.
	self cpu shlVx: 10 Vy: 0.
	self assert: vf bits equals: 1.
	self assert: x bits equals: 0.
	
	x bits: 16r40.
	self cpu shlVx: 10 Vy: 0.
	self assert: vf bits equals: 0.
	self assert: x bits equals: 16r80