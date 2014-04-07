tests
testCall
	| message |
	"2nnn - CALL addr"
	dispatcher dispatch: (C8Instruction new bits: 16r2777).
	message := cpu lastMessage.
	
	self assert: message selector equals: #call:.
	self assert: message argument equals: 16r777.