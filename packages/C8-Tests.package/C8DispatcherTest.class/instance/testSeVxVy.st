tests
testSeVxVy
	| message |
	"5xy0 - SE Vx, Vy"
	dispatcher dispatch: (C8Instruction new bits: 16r5130).
	message := cpu lastMessage.
	
	self assert: message selector equals: #seVx:Vy:.
	self assert: message arguments equals: #(1 3).