tests
testSneVxVy
	| message |
	"9xy0 - SNE Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r9010).
	message := cpu lastMessage.
	
	self assert: message selector equals: #sneVx:Vy:.
	self assert: message arguments equals: #(0 1).