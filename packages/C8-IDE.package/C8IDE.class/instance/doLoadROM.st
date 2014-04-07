button actions
doLoadROM

	(self loadFile: 'Select a ROM' binary: true) ifNotNilDo: [ :rom |
		self disassemble: rom. ]