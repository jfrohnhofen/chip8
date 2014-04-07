tests
testCls
	| message |
	"00E0 - CLS"
	dispatcher dispatch: (C8Instruction new bits: 16r00E0).
	message := cpu lastMessage.
	
	self assert: message selector equals: #cls.