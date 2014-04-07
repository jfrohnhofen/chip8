user interface
roundedCorners: anArray
	"Set the corners to round."

	super roundedCorners: anArray.
	self buttonMorph ifNotNilDo: [:b |
		b roundedCorners: (anArray copyWithoutAll: #(1 2))]