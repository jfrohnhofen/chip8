tests
testKeyboard

	"Test if the keyboard opcodes are functional by checking the PC"
	self loadROM: #[16rE1 16r9E 16rE1 16r9E].
	
	"Key not pressed - advance by one"
	self assertPcAdvance: [ self cpu keyboard keyUp: 0 ] by: 1.

	"Key pressed - skip one"
	self assertPcAdvance: [ self cpu keyboard keyDown: 0 ] by: 2