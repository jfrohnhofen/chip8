drawing
drawOn: aCanvas

	self breakpoints do: [ :breakpoint |
		self highlightLine: breakpoint on: aCanvas color: Color lightRed ].

	self activeLine ifNotNil: [
		self highlightLine: activeLine on: aCanvas color: Color lightBlue ].

	aCanvas fillRectangle: (43 @ 0 corner: 45 @ self height) fillStyle: Color gray.

	super drawOn: aCanvas