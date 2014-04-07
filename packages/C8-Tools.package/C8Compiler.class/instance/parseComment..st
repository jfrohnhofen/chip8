parsing
parseComment: aLine

	^ (aLine splitBy: ';') first withBlanksCondensed