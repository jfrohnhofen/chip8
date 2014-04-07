as yet unclassified
run: oldSelector with: arguments in: aReceiver
	| previousPc |
	self uninstall.
	(Debugger context: thisContext)
		debug: 'Debugging an Example' executeBefore: [:debugger | 
			debugger down.
			previousPc := debugger selectedContext previousPc.
			debugger restart.
			[debugger selectedContext pc < previousPc] 
				whileTrue: [debugger doStep].
			debugger send ].
	Processor activeProcess suspend.