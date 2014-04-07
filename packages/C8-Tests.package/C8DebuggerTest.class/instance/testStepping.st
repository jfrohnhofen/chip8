tests
testStepping

	| pcMorph |

	pcMorph := self debugger registerMorphs at: #PC.

	self debugger doStart.
	self assert: self debugger chip isRunning.

	(Delay forMilliseconds: 200) wait.
	self assert: (pcMorph contents) equals: 'PC: 0x0206'.

	self debugger doStep.
	(Delay forMilliseconds: 200) wait.
	self debugger doStep.
	(Delay forMilliseconds: 200) wait.
	self assert: (pcMorph contents) equals: 'PC: 0x020A'.

	self debugger doReset.
	self assert: (pcMorph contents) equals: 'PC: 0x0200'
