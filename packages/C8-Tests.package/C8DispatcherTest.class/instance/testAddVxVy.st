tests
testAddVxVy

	| message |
	
	dispatcher dispatch: (C8Instruction new bits: 16r8124).
	message := cpu lastMessage.
	self assert: message selector equals: #addVx:Vy:.
	self assert: message arguments equals: #(1 2)