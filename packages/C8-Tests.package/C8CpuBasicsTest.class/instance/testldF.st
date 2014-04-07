tests
testldF

	| i n |

	i := self cpu register: #I.
	n := 5.
	self cpu ram
		writeMany: (self cpu graphics spriteFor: n)
		to: (n * C8Graphics bytesPerSprite + 1).
	self cpu ldF: n.
	self assert: i bits equals: n * C8Graphics bytesPerSprite + 1.
	self assert: (self cpu ram read: C8Graphics bytesPerSprite  at: i bits)
		equals: #[ 16rF0 16r80 16rF0 16r10 16rF0 ]