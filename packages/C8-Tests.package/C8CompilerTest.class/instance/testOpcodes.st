tests
testOpcodes

	| testCases |
	
	testCases := Dictionary new
		at: 'CLS' put: #(16r00 16rE0);
		at: 'RET' put: #(16r00 16rEE);
		at: 'SYS 777' put: #(16r03 16r09);
		at: 'JP LABEL' put: #(16r12 16r00);
		at: 'CALL LABEL+2' put: #(16r22 16r02);
		at: 'SE V2, 127' put: #(16r32 16r7F);
		at: 'SNE V3, LABEL / 4' put: #(16r43 16r80);
		at: 'SE V0, V1' put: #(16r50 16r10);
		at: 'ADD V3, V4' put: #(16r83 16r44);
		at: 'SHL VA' put: #(16r8A 16r0E);
		at: 'JP V0, LABEL * 2 + 17' put: #(16rB4 16r11);
		at: 'SKP V7' put: #(16rE7 16r9E);
		at: 'LD VC, K' put: #(16rFC 16r0A);
		at: 'LD ST, V7' put: #(16rF7 16r18);
		at: 'ADD I, VA' put: #(16rFA 16r1E);
		at: 'LD B, V5' put: #(16rF5 16r33);
		at: 'LD [I], V0' put: #(16rF0 16r55);
		yourself.
	
	testCases keysAndValuesDo: [ :source :binary |
		self compiler parseCode: source.
		self assert: ((self compiler tokens last) evaluateUsing: '| LABEL | LABEL := 512. ') asArray equals: binary
	]
