user interface helper
createHSeparator

	^ RectangleMorph new
		vResizing: #rigid;
		hResizing: #spaceFill;
		height: 2;
		color: Color gray lighter;
		borderWidth: 1;
		borderInset