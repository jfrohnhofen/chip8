tests
testOrVxVy
	| message |
	"8xy1 - OR Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r8011).
	message := cpu lastMessage.
	
	self assert: message selector equals: #orVx:Vy:.
	self assert: message arguments equals: #(0 1).