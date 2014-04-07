actions
closeBoxHit

	self doReset.

	self editor
		ifNil: [ super closeBoxHit ]
		ifNotNil: [
			self editor doneDebugging.
			self hide ]