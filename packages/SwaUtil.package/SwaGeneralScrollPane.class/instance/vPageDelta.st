as yet unclassified
vPageDelta
	"Answer the vertical page delta."
	
	|pd tw sw|
	tw _ self scrollTarget height.
	sw _ self scrollBounds height.
	pd _ tw - sw  max: 0.
	pd = 0 ifFalse: [pd _ sw / pd].
	^pd