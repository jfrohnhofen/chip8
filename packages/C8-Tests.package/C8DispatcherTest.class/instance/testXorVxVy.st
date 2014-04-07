tests
testXorVxVy
	| message |
	"8xy3 - XOR Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8013).
	message := cpu lastMessage.
	
	self assert: message selector equals: #xorVx:Vy:.
	self assert: message arguments equals: #(0 1).