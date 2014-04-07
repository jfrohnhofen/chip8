examples
example2

	(self buttonGroupFor: {		
		self icon: MenuIcons homeIcon label: 'Home' receiver: nil selector: nil.
		self icon: MenuIcons configurationIcon label: 'Configure' receiver: nil selector: nil.
		self icon: MenuIcons confirmIcon label: 'Confirm' receiver: nil selector: nil.
	} orientation: #vertical) openInHand