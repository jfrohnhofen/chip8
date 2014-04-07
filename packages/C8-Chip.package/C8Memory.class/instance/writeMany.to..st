memory access
writeMany: aByteArray to: anAddress

	1 to: aByteArray size do: [ :n |
		self write: (aByteArray at: n) to: anAddress + n - 1 ]