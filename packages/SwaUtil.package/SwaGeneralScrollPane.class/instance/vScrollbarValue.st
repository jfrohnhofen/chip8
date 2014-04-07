as yet unclassified
vScrollbarValue
	"Answer the computed vertical scrollbar value."
	
	|tw sw v|
	tw _ self scrollTarget height.
	sw _ self scrollBounds height.
	v _ tw - sw  max: 0.
	v = 0 ifFalse: [v _  self scroller offset y asFloat / v min: 1.0].
	^v