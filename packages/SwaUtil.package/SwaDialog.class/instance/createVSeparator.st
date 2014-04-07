user interface helper
createVSeparator

	^ RectangleMorph new
		hResizing: #rigid;
		vResizing: #spaceFill;
		width: 2;
		color: Color gray lighter;
		borderWidth: 1;
		borderInset