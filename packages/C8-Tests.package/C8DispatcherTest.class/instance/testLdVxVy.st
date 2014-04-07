tests
testLdVxVy
	| message |
	"8xy0 - LD Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8130).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldVx:Vy:.
	self assert: message arguments equals: #(1 3).