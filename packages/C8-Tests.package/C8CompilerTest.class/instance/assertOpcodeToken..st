converting
assertOpcodeToken: token

	self
		assert: token opcode equals: 'Dxym';
		assert: token parameters size equals: 3;
		assert: (token parameters first) equals: '5';
		assert: (token parameters second) equals: 'A';
		assert: (token parameters third) equals: '4'
