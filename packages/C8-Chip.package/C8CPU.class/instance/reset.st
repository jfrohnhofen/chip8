actions
reset

	self registers keysAndValuesDo: [ :n :register |
		register bits: 0 ].

	self pc: C8Chip startAddress.
	self register: #SP bits: 1