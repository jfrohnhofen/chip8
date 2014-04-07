initialization
initialize

	super initialize.
	
	self
		hResizing: #spaceFill;
		setProperty: #noVScrollBarPlease toValue: true;
		setProperty: #noHScrollBarPlease toValue: true;
		height: 22;
		color: Color white.
	
	"Fix initial state."
	self
		setText: 'Hello, World!';
		resizeScroller.
	
	self textMorph wrapFlag: false.