converting
assertDataToken: token

	self
		assert: token data size equals: 4;
		assert: (token data first) equals: '10';
		assert: (token data second) equals: '0x34';
		assert: (token data third) equals: '123';
		assert: (token data fourth) equals: '0b100101'
