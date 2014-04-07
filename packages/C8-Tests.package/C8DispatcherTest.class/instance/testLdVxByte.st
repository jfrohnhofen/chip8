tests
testLdVxByte
	| message |
	"6xkk - LD Vx, byte"
	dispatcher dispatch: (C8Instruction new bits: 16r6130).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldVx:byte:.
	self assert: message arguments equals: #(1 16r30).