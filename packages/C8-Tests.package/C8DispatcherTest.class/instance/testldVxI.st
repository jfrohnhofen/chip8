tests
testldVxI
	| message |
	"Fx65 - LD Vx, [I]"
	dispatcher dispatch: (C8Instruction new bits: 16rF165).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldVxI:.
	self assert: message arguments equals: #(1).