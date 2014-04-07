tests
testRegex

	| instructions |
	
	instructions := self compiler instructions.

	self
		assert: ((instructions at: '00E0') matches: 'CLS');
		assert: ((instructions at: '00EE') matches: 'RET');
		assert: ((instructions at: '0nzz') matches: 'SYS TEST');
		assert: ((instructions at: '1nzz') matches: 'JP TEST');
		assert: ((instructions at: '2nzz') matches: 'CALL TEST');
		assert: ((instructions at: '3xkz') matches: 'SE V4, 44');
		assert: ((instructions at: '4xkz') matches: 'SNE V6, TEST+3');
		assert: ((instructions at: '5xy0') matches: 'SE V1, V2');
		assert: ((instructions at: '6xkz') matches: 'LD V7, 0x99');
		assert: ((instructions at: '7xkz') matches: 'ADD VC, 0b110');
		assert: ((instructions at: '8xy6') matches: 'SHR V0, V1');
		assert: ((instructions at: '8xz6') matches: 'SHR V0');
		assert: ((instructions at: '8xyE') matches: 'SHL V2, V3');
		assert: ((instructions at: '8xzE') matches: 'SHL V2');
		assert: ((instructions at: 'Anzz') matches: 'LD I, 123');
		assert: ((instructions at: 'Bnzz') matches: 'JP V0, 234');
		assert: ((instructions at: 'Dxym') matches: 'DRW V4, VB, 17');
		assert: ((instructions at: 'Fx07') matches: 'LD VF, DT');
		assert: ((instructions at: 'Fx18') matches: 'LD ST, V2');
		assert: ((instructions at: 'Fx33') matches: 'LD B, VA');
		assert: ((instructions at: 'Fx65') matches: 'LD V3, [I]')
