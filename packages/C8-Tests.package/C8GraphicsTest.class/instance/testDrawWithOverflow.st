tests
testDrawWithOverflow

	self graphics draw: self sprite to: (60 @ 30).
	self assert: self graphics buffer equals: self displayWithOverflownSprite
