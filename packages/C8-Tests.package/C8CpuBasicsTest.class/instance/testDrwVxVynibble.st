tests
testDrwVxVynibble

	| x y n buffer |

	x := self cpu register: 5.
	y := self cpu register: 4.
	x bits: 0.
	y bits: 0.
	n := 7.
	self cpu ram
		writeMany: (self cpu graphics spriteFor: n)
		to: (n * C8Graphics bytesPerSprite + 1).
	self cpu cls.
	self cpu ldF: n.
	self cpu drwVx: 5 Vy: 4 nibble: C8Graphics bytesPerSprite.
	buffer := self cpu graphics buffer.
	self assert: buffer first equals: 16rF << 28.
	self assert: buffer third equals: 16r1 << 28.
	self assert: buffer fifth equals: 16r2  << 28.
	self assert: buffer seventh equals: 16r4 << 28.
	self assert: buffer ninth equals: 16r4 << 28