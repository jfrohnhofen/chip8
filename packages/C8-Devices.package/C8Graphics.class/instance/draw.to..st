drawing
draw: aSprite to: aPoint

	| rowPos |

	(self isValidSprite: aSprite) ifFalse: [ C8InvalidSpriteException signal ].

	self collisionFlag: false.

	1 to: aSprite size do: [ :row |
		rowPos := (aPoint x \\ 64) @ ((aPoint y + row - 1) \\ 32).
		self drawRow: (aSprite at: row) to: rowPos ].

	self changed.
	^ self collisionFlag