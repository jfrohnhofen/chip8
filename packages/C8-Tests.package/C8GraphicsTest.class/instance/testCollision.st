tests
testCollision

	self
		deny: (self graphics draw: self sprite to: (27 @ 13));
		deny: (self graphics draw: self sprite to: (23 @ 10));
		assert: (self graphics draw: self sprite to: (25 @ 11))
