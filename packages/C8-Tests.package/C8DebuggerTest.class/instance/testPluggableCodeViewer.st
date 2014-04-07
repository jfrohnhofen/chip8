tests
testPluggableCodeViewer

	| codeViewer textMorph |

	codeViewer := self debugger codeViewer.
	textMorph := codeViewer textMorph.

	codeViewer activeLine: 14.
	codeViewer breakpoints: #(1 2 7 9).

	self
		assert: textMorph class equals: C8CodeViewer;
		assert: textMorph activeLine equals: 14;
		assert: textMorph breakpoints equals: #(1 2 7 9)
