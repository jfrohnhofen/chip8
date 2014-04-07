as yet unclassified
hScrollbarValue
	"Answer the computed horizontal scrollbar value."
	
	|tw sw v|
	tw _ self scrollTarget width.
	sw _ self scrollBounds width.
	v _ tw - sw  max: 0.
	v = 0 ifFalse: [v _  self scroller offset x asFloat / v min: 1.0].
	^v