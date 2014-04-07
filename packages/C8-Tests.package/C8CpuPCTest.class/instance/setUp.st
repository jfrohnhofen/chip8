running
setUp
	
	self cpu: C8CPU new.
	
	(self cpu)
		ram: C8Memory new;
		graphics: C8Graphics new;
		keyboard: C8Keyboard new;
		reset