tests
testRet
	| message |
	"00EE - RET"
	dispatcher dispatch: (C8Instruction new bits: 16r00EE).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ret.