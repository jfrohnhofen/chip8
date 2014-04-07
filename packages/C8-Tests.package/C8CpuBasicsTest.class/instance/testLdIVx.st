tests
testLdIVx

	| anAddress |

	anAddress := C8Chip startAddress + 30.
	0 to: 15 do:
		[ :index | self cpu register: index bits: index ].
	self cpu register: #I bits: anAddress.
	self cpu ldIVx: 15.
	0 to: 15 do:
		[ :index | self assert: (self cpu ram readAt: anAddress + index) equals: index ]