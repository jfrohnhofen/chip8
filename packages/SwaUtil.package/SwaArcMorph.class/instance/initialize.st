initialization
initialize

	super initialize.
	
	radius := 50.
	
	self
		borderColor: Color black;
		borderWidth: 2;
		color: Color yellow;
		drawInnerBorder: true;
		startDegree: -45;
		endDegree: 45.