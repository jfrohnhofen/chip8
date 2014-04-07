actions
detachDebugger: aDebugger

	self debugger: nil.

	self cpu registers do: [ :register |
		register removeDependent: aDebugger ]