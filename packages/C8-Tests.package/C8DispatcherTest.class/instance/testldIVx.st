tests
testldIVx
	| message |
	"Fx55 - LD [I], Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rF155).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldIVx:.
	self assert: message arguments equals: #(1).