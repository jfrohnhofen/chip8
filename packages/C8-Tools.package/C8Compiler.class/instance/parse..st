parsing
parse: linesOfCode

	self currentLineNumber: 1.

	linesOfCode do: [ :line |
		line := self parseComment: line.
		line := self parseLabels: line.
		line := self parseBreakpoint: line.
		line := self parseCode: line.
		line := self parseData: line.
		self currentLineNumber: self currentLineNumber + 1 ]