tests
testLdI
	| message |
	"Annn - LD I, addr"
	dispatcher dispatch: (C8Instruction new bits: 16rA123).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldI:.
	self assert: message arguments equals: #(16r123).