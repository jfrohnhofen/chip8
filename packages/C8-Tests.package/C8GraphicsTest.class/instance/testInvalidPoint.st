tests
testInvalidPoint

	self
		should: [ self graphics draw: self sprite to: (-1 @ -1) ] raise: C8InvalidSpritePositionException;
		should: [ self graphics draw: self sprite to: (0 @ 32) ] raise: C8InvalidSpritePositionException;
		should: [ self graphics draw: self sprite to: (64 @ 0) ] raise: C8InvalidSpritePositionException
