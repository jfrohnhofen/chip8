tests
testldFVx
	| message |
	"Fx29 - LD F, Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rF129).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldF:.
	self assert: message arguments equals: #(1).