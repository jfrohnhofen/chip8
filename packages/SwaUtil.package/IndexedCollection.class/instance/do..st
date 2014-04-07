as yet unclassified
do: aBlock
	^ array reject: [ :ea | ea == nil ] thenDo: aBlock 