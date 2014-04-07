tests
testDraw

	self graphics draw: self sprite to: (18 @ 10).
	self assert: self graphics buffer equals: self displayWithSprite.

	self graphics draw: self sprite to: (19 @ 11).
	self assert: self graphics buffer equals: self displayWithTwoSprites