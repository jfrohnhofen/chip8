converting
assertPcAdvance: aBlock by: anInteger

	"Check if the PC advances by anInteger after one cycle.
	aBlock may have side effects that trigger opcode skipping."
	
	| pc |
	
	pc := self cpu pc.
	aBlock value.
	self cpu doCycle.
	self assert: (self cpu pc)
		 equals: pc + (anInteger * C8CPU opcodeLength).
