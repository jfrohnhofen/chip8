tests
testSubnVxVy
	| message |
	"8xy7 - SUBN Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8017).
	message := cpu lastMessage.
	
	self assert: message selector equals: #subnVx:Vy:.
	self assert: message arguments equals: #(0 1).