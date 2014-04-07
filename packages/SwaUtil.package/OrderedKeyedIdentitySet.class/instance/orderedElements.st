accessing
orderedElements
	^ orderedElements ifNil: [ orderedElements := OrderedCollection ofSize: 100. ]