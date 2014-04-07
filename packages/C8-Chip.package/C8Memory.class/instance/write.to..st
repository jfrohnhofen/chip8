memory access
write: aByte to: anAddress

	[ self content at: anAddress put: aByte] on: Error do:
		[ C8MemoryAccessViolation new signal ]