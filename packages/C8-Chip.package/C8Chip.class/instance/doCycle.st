actions
doCycle

	self chipShouldHalt
		ifTrue: [ self stop ]
		ifFalse: [ self cpu doCycle ]