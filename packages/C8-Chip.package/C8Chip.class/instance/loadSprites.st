actions
loadSprites

	0 to: 15 do: [ :n |
		| sprite position |
		sprite := self graphics spriteFor: n.
		position := n * C8Graphics bytesPerSprite + 1.
		self ram writeMany: sprite to: position ]