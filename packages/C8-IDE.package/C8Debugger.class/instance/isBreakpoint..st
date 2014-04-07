testing
isBreakpoint: anAddress

	^ self stepping or: [ self breakpoints includes: anAddress ]