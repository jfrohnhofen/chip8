tests
testAndVxVy
	| message |
	"8xy2 - AND Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8012).
	message := cpu lastMessage.
	
	self assert: message selector equals: #andVx:Vy:.
	self assert: message arguments equals: #(0 1).