tests
testSeVxByte
	| message |
	"3xkk - SE Vx, byte"
	dispatcher dispatch: (C8Instruction new bits: 16r3077).
	message := cpu lastMessage.
	
	self assert: message selector equals: #seVx:byte:.
	self assert: message arguments equals: #(0 16r77).