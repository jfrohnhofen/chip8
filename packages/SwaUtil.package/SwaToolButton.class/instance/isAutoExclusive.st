accessing
isAutoExclusive
	"Look at my owner and ensure that exactly one of my kind is checked at a time."

	^ isAutoExclusive ifNil: [isAutoExclusive := false]