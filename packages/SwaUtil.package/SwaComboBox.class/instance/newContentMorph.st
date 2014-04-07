user interface
newContentMorph
	"Answer a new content morph"

	^ SwaLineEditTextMorph new
		contents: ' ';
		margins: (2@0 corner: 2@1);
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		autoFit: false;
		lock