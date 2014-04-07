drawing
drawRow: aSpriteRow to: aPoint

	| spriteRow spriteLeft spriteRight bufferIndex |

	spriteRow := aSpriteRow bitShift: 64 - 8 - (aPoint x \\ 32).

	aPoint x < 32
		ifTrue: [
			spriteLeft := spriteRow bitShift: -32.
			spriteRight := spriteRow bitAnd: (1 bitShift: 32) - 1 ]
		ifFalse: [
			spriteLeft := spriteRow bitAnd: (1 bitShift: 32) - 1.
			spriteRight := spriteRow bitShift: -32 ].

	bufferIndex := aPoint y * 2 + 1.

	self draw: spriteLeft toBufferAt: bufferIndex.
	self draw: spriteRight toBufferAt: bufferIndex + 1.