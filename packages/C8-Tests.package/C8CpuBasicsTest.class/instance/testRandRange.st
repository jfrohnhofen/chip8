tests
testRandRange

	| result | 
	
	self cpu rndVx: 0 byte: 16rFF.
	result := (self cpu register: 0) bits.
	self assert: ((0 <= result) and: [ result <= 255 ])