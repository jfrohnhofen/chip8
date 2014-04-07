accessing
orderedKeys
	^ orderedKeys ifNil: [ orderedKeys := OrderedIdentityCollection ofSize: 100 ]