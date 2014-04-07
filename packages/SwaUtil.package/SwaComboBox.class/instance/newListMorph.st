user interface
newListMorph
	"Answer a new list morph"

	|m|
	m := (self listMorphClass
		on: self
		list: #list
		selected: #listSelectionIndex
		changeSelected: #listSelectionIndex:
		menu: nil
		keystroke: nil)
			setProperty: #morphicLayerNumber toValue: 5;
			color: self color;
			borderStyle: BorderStyle default;
			on: #mouseDown send: #listMouseDown: to: self.
	^m