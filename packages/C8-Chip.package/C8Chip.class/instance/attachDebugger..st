actions
attachDebugger: aDebugger

	self debugger: aDebugger.

	self cpu registers do: [ :register |
		register addDependent: aDebugger ]