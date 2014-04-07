tests
testDrwVxVyNibble
	| message |
	"Dxyn - DRW Vx, Vy, nibble"
	dispatcher dispatch: (C8Instruction new bits: 16rD120).
	message := cpu lastMessage.
	
	self assert: message selector equals: #drwVx:Vy:nibble:.
	self assert: message arguments equals: #(1 2 0).