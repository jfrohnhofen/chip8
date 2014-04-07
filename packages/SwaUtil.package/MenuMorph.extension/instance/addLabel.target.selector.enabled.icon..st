*SwaUtil
addLabel: label target: anObject selector: aSelector enabled: aBoolean icon: aSymbol
	"Idea extracted from ob-morphic. But ob-morphic expects anObject to implement #longDescription to provide a balloon tip."
	
	self add: label target: anObject selector: aSelector.
	self lastItem isEnabled: aBoolean.
	self lastItem icon: (MenuIcons perform: aSymbol).