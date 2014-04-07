memory access
read: anInteger at: anAddress

	^ ((anAddress to: anAddress + anInteger - 1) collect: [ :n |
		self readAt: n ]) asByteArray