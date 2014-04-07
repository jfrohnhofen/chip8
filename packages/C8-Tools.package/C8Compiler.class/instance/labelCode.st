compiling
labelCode

	| assignments |
	
	assignments := ''.
	self labels keysAndValuesDo: [ :key :value |
		assignments := assignments, key, ' := ', value asString, '. ' ].
	
	^ assignments