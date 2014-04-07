tests
testRndVxByte
	| message |
	"Cxkk - RND Vx, byte"
	dispatcher dispatch: (C8Instruction new bits: 16rC130).
	message := cpu lastMessage.
	
	self assert: message selector equals: #rndVx:byte:.
	self assert: message arguments equals: #(1 16r30).