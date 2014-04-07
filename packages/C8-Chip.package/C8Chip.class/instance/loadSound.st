initialize-release
loadSound

	| directory sound |
	
	directory := FileDirectory on: (FileDirectory default fullNameFor: 'c8Resources').

	^ (directory isAFileNamed: self class soundFileName)
		ifTrue: [
			sound :=  SampledSound fromWaveFileNamed:
				(directory fullNameFor: self class soundFileName).
		 	RepeatingSound repeatForever: sound ]
		ifFalse: [ nil ]