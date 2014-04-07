actions
loadROM: rom

	self loadSprites.
	self ram writeMany: rom to: self class startAddress.
	self reset