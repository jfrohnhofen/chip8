testing
chipShouldHalt: anAddress

	| halt |

	halt := self haltOnBreakpoint and: [ self isBreakpoint: anAddress ].
	self haltOnBreakpoint: true.
	
	halt ifTrue: [
		self updateButtons: #(Start Step Reset).
		self registerMorph show ].

	^ halt