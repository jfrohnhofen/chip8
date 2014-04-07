compiling
assemble: tokens

	self
		binary: (tokens collect: [ :token | token evaluateUsing: self labelCode ]) flatten asByteArray;
		source: (tokens inject: '' into: [ :source :token | source, token format ]);
		breakpoints: (tokens collect: [ :token | token breakpoint ]) flatten;
		mapping: (tokens collect: [ :token | token mapping ]) flatten;
		errors: (tokens inject: '' into: [ :errors :token | errors, token errors ]).
	
	^ self binary