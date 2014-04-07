tests
testJpV0
	| message |
	"Bnnn - JP V0, addr"
	dispatcher dispatch: (C8Instruction new bits: 16rB123).
	message := cpu lastMessage.
	
	self assert: message selector equals: #jpV0:.
	self assert: message arguments equals: #(16r123).