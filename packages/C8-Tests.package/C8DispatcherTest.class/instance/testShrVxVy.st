tests
testShrVxVy
	| message |
	"8xy6 - SHR Vx {, Vy}"
	dispatcher dispatch: (C8Instruction new bits: 16r8016).
	message := cpu lastMessage.
	
	self assert: message selector equals: #shrVx:Vy:.
	self assert: message arguments equals: #(0 1).