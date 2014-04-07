tests
testSkpVx
	| message |
	"Ex9E - SKP Vx"
	dispatcher dispatch: (C8Instruction new bits: 16rE19E).
	message := cpu lastMessage.
	
	self assert: message selector equals: #skpVx:.
	self assert: message arguments equals: #(1).