tests
testAddVxByte 
	| message |
	"7xkk - ADD Vx, byte"
	dispatcher dispatch: (C8Instruction new bits: 16r7412).
	message := cpu lastMessage.
	
	self assert: message selector equals: #addVx:byte:.
	self assert: message arguments equals: #(4 16r12)
	
	