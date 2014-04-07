tests
testKeyboardInverse

	"Test if the keyboard opcodes are functional by checking the PC"
	self loadROM: #[16rE0 16rA1 16rE0 16rA1].

	"Key released - advance by one"
	self assertPcAdvance: [ self cpu keyboard keyDown: 0 ] by: 1.

	"Key pressed - advance by two"
	self assertPcAdvance: [ self cpu keyboard keyUp: 0 ] by: 2