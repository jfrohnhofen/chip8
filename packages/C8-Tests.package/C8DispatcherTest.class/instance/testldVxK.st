tests
testldVxK
	| message |
	"Fx0A - LD Vx, K"
	dispatcher dispatch: (C8Instruction new bits: 16rF10A).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldK:.
	self assert: message arguments equals: #(1).