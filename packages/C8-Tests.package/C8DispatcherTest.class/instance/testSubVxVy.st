tests
testSubVxVy
	| message |
	"8xy5 - SUB Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8015).
	message := cpu lastMessage.
	
	self assert: message selector equals: #subVx:Vy:.
	self assert: message arguments equals: #(0 1).