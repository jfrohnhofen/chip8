running
setUp

	self chip: C8Chip new.

	(self chip cpu)
		ram: (C8Memory new
			writeMany: #[16r64 16r24 16r74 16r24] to: C8Chip startAddress
			yourself);
		reset.

	self pc: (self chip cpu register: #PC).
	self r4: (self chip cpu register: 4)