button actions
doRun

	self compile ifFalse: [ ^ nil ].

	(self debugger)
		source: self compiler source;
		binary: self compiler binary;
		breakpoints: self compiler breakpoints;
		mapping: self compiler mapping;
		startDebugging.

	self hide