printing
reportError: expression

	self errors:
		self errors,
		'Error in line ',
		self lineNumber printString,
		': Could not evaluate expression "',
		expression,
		'"',
		String cr