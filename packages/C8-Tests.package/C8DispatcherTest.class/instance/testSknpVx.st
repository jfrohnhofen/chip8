tests
testSknpVx
	| message |
	"Ex9E - SKP Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rE1A1).
	message := cpu lastMessage.
	
	self assert: message selector equals: #sknpVx:.
	self assert: message arguments equals: #(1).