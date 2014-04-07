tests
testShlVxVy
	| message |
	"8xyE - SHL Vx {, Vy}"
	dispatcher dispatch: (C8Instruction new bits: 16r801E).
	message := cpu lastMessage.
	
	self assert: message selector equals: #shlVx:Vy:.
	self assert: message arguments equals: #(0 1).