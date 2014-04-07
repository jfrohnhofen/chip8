tests
testSub

	| register1 register2 registerF |
	
	register1 := self cpu register: 0.
	register2 := self cpu register: 1.
	registerF := self cpu register: 15.
	
	register1 bits: 5.
	register2 bits: 3.
	self cpu subVx: 0 Vy: 1.
	self assert: registerF bits equals: 1.
	self assert: register1 bits equals: 2.
	
	register1 bits: 3.
	register2 bits: 5.
	self cpu subVx: 0 Vy: 1.
	self assert: registerF bits equals: 0.
	self assert: register1 bits equals: 254