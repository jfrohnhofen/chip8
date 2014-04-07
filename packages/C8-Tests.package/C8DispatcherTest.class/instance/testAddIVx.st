tests
testAddIVx
	| message |
	"Fx1E - ADD I, Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rF11E).
	message := cpu lastMessage.
	
	self assert: message selector equals: #addIVx:.
	self assert: message arguments equals: #(16r1).