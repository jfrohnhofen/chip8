initialize-release
initializeInstructions

	^ Dictionary new
		at: '00E0' put: 'CLS' asRegex;
		at: '00EE' put: 'RET' asRegex;
		at: '0nzz' put: 'SYS (.*)' asRegex;
		at: '1nzz' put: 'JP (.*)' asRegex;
		at: '2nzz' put: 'CALL (.*)' asRegex;
		at: '3xkz' put: 'SE V([0-9A-F]) ?, ?(.*)' asRegex;
		at: '4xkz' put: 'SNE V([0-9A-F]) ?, ?(.*)' asRegex;
		at: '5xy0' put: 'SE V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '6xkz' put: 'LD V([0-9A-F]) ?, ?(.*)' asRegex;
		at: '7xkz' put: 'ADD V([0-9A-F]) ?, ?(.*)' asRegex;
		at: '8xy0' put: 'LD V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy1' put: 'OR V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy2' put: 'AND V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy3' put: 'XOR V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy4' put: 'ADD V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy5' put: 'SUB V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xy6' put: 'SHR V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xz6' put: 'SHR V([0-9A-F])' asRegex;
		at: '8xy7' put: 'SUBN V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xyE' put: 'SHL V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: '8xzE' put: 'SHL V([0-9A-F])' asRegex;
		at: '9xy0' put: 'SNE V([0-9A-F]) ?, ?V([0-9A-F])' asRegex;
		at: 'Anzz' put: 'LD I ?, ?(.*)' asRegex;
		at: 'Bnzz' put: 'JP V0 ?, ?(.*)' asRegex;
		at: 'Cxkz' put: 'RND V([0-9A-F]) ?, ?(.*)' asRegex;
		at: 'Dxym' put: 'DRW V([0-9A-F]) ?, ?V([0-9A-F]) ?, ?(.*)' asRegex;
		at: 'Ex9E' put: 'SKP V([0-9A-F])' asRegex;
		at: 'ExA1' put: 'SKNP V([0-9A-F])' asRegex;
		at: 'Fx07' put: 'LD V([0-9A-F]) ?, ?DT' asRegex;
		at: 'Fx0A' put: 'LD V([0-9A-F]) ?, ?K' asRegex;
		at: 'Fx15' put: 'LD DT ?, ?V([0-9A-F])' asRegex;
		at: 'Fx18' put: 'LD ST ?, ?V([0-9A-F])' asRegex;
		at: 'Fx1E' put: 'ADD I ?, ?V([0-9A-F])' asRegex;
		at: 'Fx29' put: 'LD F ?, ?V([0-9A-F])' asRegex;
		at: 'Fx33' put: 'LD B ?, ?V([0-9A-F])' asRegex;
		at: 'Fx55' put: 'LD \[I\] ?, ?V([0-9A-F])' asRegex;
		at: 'Fx65' put: 'LD V([0-9A-F]) ?, ?\[I\]' asRegex;
		yourself