examples
example2

	(self
		for: (ValueHolder new)
		get: #contents
		set: #contents:
		help: 'Just a dummy.')
		validator: #integer;
		openInHand