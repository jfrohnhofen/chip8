as yet unclassified
hPageDelta
	"Answer the horizontal page delta."
	
	|pd tw sw|
	tw _ self scrollTarget width.
	sw _ self scrollBounds width.
	pd _ tw - sw  max: 0.
	pd = 0 ifFalse: [pd _ sw / pd].
	^pd