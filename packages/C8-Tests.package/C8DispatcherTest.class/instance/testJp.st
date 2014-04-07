tests
testJp
	| message |
	"1nnn - JP addr"
	dispatcher dispatch: (C8Instruction new bits: 16r1777).
	message := cpu lastMessage.
	
	self assert: message selector equals: #jp:.
	self assert: message argument equals: 16r777.