user interface
buttonLabel
	"Answer the label for the button."

	^ ImageMorph new
		image: (ScrollBar
			arrowOfDirection: #bottom
			size: self buttonWidth - 3
			color: self color darker)