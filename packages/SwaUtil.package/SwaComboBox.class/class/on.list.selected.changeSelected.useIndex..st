instance creation
on: anObject list: getListSel selected: getSelectionSel changeSelected: setSelectionSel useIndex: useIndex
	"Answer a new instance of the receiver on the given model using
	the given selectors as the interface."

	| instance |
	instance := self new.
	
	getListSel isSymbol
		ifTrue: [instance  getListSelector: getListSel]
		ifFalse: [instance list: getListSel]. "allow direct list"
	
	instance
		model: anObject;
		getIndexSelector: getSelectionSel;
		setIndexSelector: setSelectionSel;
		updateList;
		updateListSelectionIndex;
		updateContents.

	^ instance