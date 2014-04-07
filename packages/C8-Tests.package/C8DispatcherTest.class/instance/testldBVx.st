tests
testldBVx
	| message |
	"Fx33 - LD B, Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rF133).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldB:.
	self assert: message arguments equals: #(1).