instance creation
buttonGroupFor: someToolButtons orientation: aSymbol
	"Create an auto-exclusive button group like radio buttons."

	| row |
	row := Morph new
		hResizing: (aSymbol = #horizontal ifTrue: [#spaceFill] ifFalse: [#shrinkWrap]);
		vResizing: (aSymbol = #horizontal ifTrue: [#shrinkWrap] ifFalse: [#spaceFill]);
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: (aSymbol = #horizontal ifTrue: [#leftToRight] ifFalse: [#topToBottom]);
		cellInset: 8.
	
	someToolButtons do: [:button |
		button isAutoExclusive: true.
		"button hResizing: #spaceFill."
		row addMorphBack: button].
	
	^ row