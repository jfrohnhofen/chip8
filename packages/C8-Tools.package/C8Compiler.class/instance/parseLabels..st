parsing
parseLabels: aLine

	| labels restLine |

	labels := (aLine splitBy: ':') asOrderedCollection.
	restLine := labels removeLast.

	labels do: [ :label |
		self labels at: label withBlanksCondensed put: self currentAddress.
		self tokens add: (C8Token label: label) ].

	^ restLine withBlanksCondensed