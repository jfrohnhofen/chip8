tests
testInvalidSprite

	self should: [ self graphics draw: self invalidSprite to: (0 @ 0) ] raise: C8InvalidSpriteException
