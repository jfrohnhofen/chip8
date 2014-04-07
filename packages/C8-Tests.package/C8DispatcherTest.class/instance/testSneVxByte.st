tests
testSneVxByte
	| message |
	"4xkk - SNE Vx, byte"
	dispatcher dispatch: (C8Instruction new bits: 16r4077).
	message := cpu lastMessage.
	
	self assert: message selector equals: #sneVx:byte:.
	self assert: message arguments equals: #(0 16r77).