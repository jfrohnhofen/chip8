button actions
doLoadSource

	(self loadFile: 'Select a Source File' binary: false) ifNotNilDo: [ :source |
		self editor setText: source ]