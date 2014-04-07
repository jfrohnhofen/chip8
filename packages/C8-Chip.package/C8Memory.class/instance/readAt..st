memory access
readAt: anAddress

	^ [ self content at: anAddress ] on: Error do:
		[ C8MemoryAccessViolation new signal ]