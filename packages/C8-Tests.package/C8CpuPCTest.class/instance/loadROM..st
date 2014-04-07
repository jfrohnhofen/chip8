utilities
loadROM: aByteArray

	self cpu ram
		writeMany: aByteArray
		to: (C8Chip startAddress)
