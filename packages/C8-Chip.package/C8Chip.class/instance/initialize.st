initialize-release
initialize
	
	super initialize.

	self
		cpu: C8CPU new;
		ram: C8Memory new;
		keyboard: C8Keyboard new;
		graphics: C8Graphics new;
		display: (C8Display newFor: self graphics);
		sound: self loadSound.

	(self cpu)
		ram: self ram;
		keyboard: self keyboard;
		graphics: self graphics;
		sound: self sound.

	self reset