evaluating
convertLiteralsToSqueak: value

	^ (value copyReplaceAll: '0x' with: '16r') copyReplaceAll: '0b' with: '2r'