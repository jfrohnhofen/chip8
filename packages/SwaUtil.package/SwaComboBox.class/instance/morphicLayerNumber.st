user interface
morphicLayerNumber
	"Answer the layer number."

	^self listVisible ifTrue: [10] ifFalse: [super morphicLayerNumber]