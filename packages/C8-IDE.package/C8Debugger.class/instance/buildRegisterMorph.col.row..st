initialization
buildRegisterMorph: label col: col row: row

	^ self registers at: label put: (StringMorph new
		position: (col * 81) @ (row * 30) - (70 @ 17);
		extent: 76 @ 25;
		yourself)