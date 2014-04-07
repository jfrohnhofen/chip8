evaluating
evaluate: value using: symbolCode nibbleCount: count nibbleShift: shift

	| code result mask |

	code := (symbolCode, (self convertLiteralsToSqueak: value)) asLowercase.
	result := [ Compiler evaluate: code ] on: Error do: [
		self reportError: value.
		^ 0 ].

	(self isValidResult: result) ifFalse: [ self reportError: value. ^ 0 ].

	mask := (2 raisedTo: count * 4) - 1.
	^ (result bitAnd: mask) bitShift: shift * 4