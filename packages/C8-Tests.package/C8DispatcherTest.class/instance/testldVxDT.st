tests
testldVxDT
	| message |
	"Fx07 - LD Vx, DT"
	dispatcher dispatch: (C8Instruction new bits: 16rF107).
	message := cpu lastMessage.
	
	self assert: message selector equals: #ldVxDT:.
	self assert: message arguments equals: #(1).